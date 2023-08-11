# Rebecca M Joseph, Mohammad Movahedi, William G Dixon, Deborah PM Symmons, 2023.

import sys, csv, re

codes = [{"code":"B18y600","system":"readv2"},{"code":"B1z..00","system":"readv2"},{"code":"B58y411","system":"readv2"},{"code":"B624.00","system":"readv2"},{"code":"B624.11","system":"readv2"},{"code":"B624000","system":"readv2"},{"code":"J400200","system":"readv2"},{"code":"J400300","system":"readv2"},{"code":"N016300","system":"readv2"},{"code":"N016400","system":"readv2"},{"code":"N016700","system":"readv2"},{"code":"N023300","system":"readv2"},{"code":"N023400","system":"readv2"},{"code":"N023600","system":"readv2"},{"code":"N023700","system":"readv2"},{"code":"N02y100","system":"readv2"},{"code":"N02y600","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('rheumatoid-arthritis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["rheumatoid-arthritis-reticuloendotheliosis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["rheumatoid-arthritis-reticuloendotheliosis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["rheumatoid-arthritis-reticuloendotheliosis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
