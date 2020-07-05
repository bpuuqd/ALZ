package alz.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import alz.order.domain.MerchandiseCriteria;
import alz.order.domain.MerchandiseDTO;
import alz.order.domain.MerchandisePageDTO;
import alz.order.service.MerchandiseService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/merchandise/*")
public class MerchandisePageController {

	private MerchandiseService merchandiseService;

	@GetMapping("/register")
	public void register() {
	}

//	@GetMapping("/list")
//	public void list(Model model) {
//
//		log.info("list");
//		model.addAttribute("list", merchandiseService.readAll());
//
//	}

	@GetMapping("/list")
	public void list(MerchandiseCriteria cri, Model model) {

		log.info("list: " + cri);
		model.addAttribute("list", merchandiseService.readAll(cri));
		
		int total = merchandiseService.getTotal(cri);
		
		log.info("total: " + total);
		
		model.addAttribute("pageMaker", new MerchandisePageDTO(cri, total));
	}

	@PostMapping("/register")
	public String register(MerchandiseDTO merchandise, RedirectAttributes rttr) {

		log.info("register: " + merchandise);

		merchandiseService.create(merchandise);

		rttr.addFlashAttribute("result", merchandise.getId());

		return "redirect:/merchandise/list";
	}

	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("id") Long id, @ModelAttribute("cri") MerchandiseCriteria cri, Model model) {

		log.info("/get or modify");
		model.addAttribute("merchandise", merchandiseService.readById(id));
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("id") Long id, @ModelAttribute("cri") MerchandiseCriteria cri, RedirectAttributes rttr) {

		log.info("remove..." + id);
		if (merchandiseService.deleteById(id) == id) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		return "redirect:/merchandise/list";
	}

	@PostMapping("/modify")
	public String modify(@RequestParam("id") Long id, @ModelAttribute("cri") MerchandiseCriteria cri, MerchandiseDTO merchandise, RedirectAttributes rttr) {
		log.info("modify:" + merchandise);

		if (merchandiseService.updateById(id, merchandise) != null) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/merchandise/list";
	}

//	@PostMapping("/modify")
//	public String modify(MerchandiseDTO merchandise, RedirectAttributes rttr) {
//		log.info("modify:" + merchandise );
//		
//		if (merchandiseService.update(merchandise) != null) {
//			rttr.addFlashAttribute("result", "success");
//		}
//		return "redirect:/merchandise/list";
//	}

}