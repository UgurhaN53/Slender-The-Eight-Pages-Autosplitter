state("Slender", "9.1") {
	int pages : "mono.dll", 0x1EE0AC, 0x14, 0x94;	
}

state ("Slender - The Eight Pages", "9.7") {
	int pages : "Slender - The Eight Pages.exe", 0x85F6E8, 0x50, 0x18, 0xD8;
}

startup {
	settings.Add("afterpages", false, "Split after every page");
	vars.timerModel = new TimerModel { CurrentState = timer };
}

split {
	if (current.pages != 0 && old.pages != current.pages && settings["afterpages"]) return true;
		if (!settings["afterpages"] && current.pages == 8) return true;	
}