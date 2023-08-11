# Rebecca M Joseph, Mohammad Movahedi, William G Dixon, Deborah PM Symmons, 2023.

import sys, csv, re

codes = [{"code":"B64..00","system":"readv2"},{"code":"B64..11","system":"readv2"},{"code":"B641.00","system":"readv2"},{"code":"B641.11","system":"readv2"},{"code":"B64y.00","system":"readv2"},{"code":"B64y100","system":"readv2"},{"code":"B65..00","system":"readv2"},{"code":"B651.00","system":"readv2"},{"code":"B651000","system":"readv2"},{"code":"B66..12","system":"readv2"},{"code":"B67..00","system":"readv2"},{"code":"B672.00","system":"readv2"},{"code":"B672.11","system":"readv2"},{"code":"B67y.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('rheumatoid-arthritis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["leukaemic-rheumatoid-arthritis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["leukaemic-rheumatoid-arthritis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["leukaemic-rheumatoid-arthritis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
