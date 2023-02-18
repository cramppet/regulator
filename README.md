# Project REGULATOR: Automated learning of regexes for DNS discovery

I had a lot of fun making this and I hope this project will change the way you
see subdomain enumeration. The method explored here is highly effective and
efficient.

With this said, it's not a silver bullet. Not every DNS zone performs well with
this method. It fails when there are no latent text structures in the hostnames
(ie. they are seemingly random) or you have limited observational data.

This project was developed primarily to showcase the power of regular language
ranking via the `dank` (https://github.com/cramppet/dank) library. I wanted to
show that the concept of ranking and using regexes as templates for fuzzing can
work very well.

For more information see the blog post here: https://cramppet.github.io/regulator/index.html

## Install

1. clone the repository
2. install the dependencies `pip3 install -r requirements.txt`

## Usage

1. Run your subdomain enumeration tool of choice
2. Supply the hostnames found to REGULATOR: `python3 main.py -t <target.com> -f <hosts-file> -o <output-file>`

# Example

1. `python3 main.py -t adobe.com -f adobe.subs -o adobe.brute`
3. `puredns resolve adobe.brute --write adobe.valid`

Be advised that the discovered hosts will overlap with your original input data.
If you want the subdomains that were not previously found by the subdomain 
enumeration tool, use the following command: 
 
 `comm -23 <(sort -u adobe.valid) <(sort -u adobe.subs) > adobe.final`
