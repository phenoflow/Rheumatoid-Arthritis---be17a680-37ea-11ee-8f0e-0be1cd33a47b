# Rebecca M Joseph, Mohammad Movahedi, William G Dixon, Deborah PM Symmons, 2023.

import sys, csv, re

codes = [{"code":"N020.00","system":"readv2"},{"code":"N020400","system":"readv2"},{"code":"N020600","system":"readv2"},{"code":"N020700","system":"readv2"},{"code":"N021000","system":"readv2"},{"code":"N021100","system":"readv2"},{"code":"N021300","system":"readv2"},{"code":"N021400","system":"readv2"},{"code":"N021600","system":"readv2"},{"code":"N021611","system":"readv2"},{"code":"N021700","system":"readv2"},{"code":"N021x00","system":"readv2"},{"code":"N021y00","system":"readv2"},{"code":"N021z00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('rheumatoid-arthritis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["rheumatoid-arthritis-pyrophosphate---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["rheumatoid-arthritis-pyrophosphate---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["rheumatoid-arthritis-pyrophosphate---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
