#!/usr/bin/env deno

import { parse } from "https://deno.land/std@0.200.0/flags/mod.ts";

const args = parse(Deno.args, {
	boolean: ["help", "save"],
	string: ["name", "color"],
	alias: { help: "h" },
	default: { color: "blue" },
});

function printHelp(): void {
	console.log(`Usage: onboard_secrets [OPTIONS...]`);
	console.log("\nOptional flags:");
	console.log("  -h, --help                Display this help and exit");
	console.log("  -s, --save                Save settings for future greetings");
	console.log("  -n, --name                Set your name for the greeting");
	console.log("  -c, --color               Set the color of the greeting");
}

// If help flag enabled, print help.
if (args.help) {
	printHelp();
	Deno.exit(0);
}
