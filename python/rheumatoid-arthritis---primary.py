# Rebecca M Joseph, Mohammad Movahedi, William G Dixon, Deborah PM Symmons, 2023.

import sys, csv, re

codes = [{"code":"66H..13","system":"readv2"},{"code":"A022300","system":"readv2"},{"code":"A15..12","system":"readv2"},{"code":"A56x000","system":"readv2"},{"code":"A985000","system":"readv2"},{"code":"B671.11","system":"readv2"},{"code":"F371200","system":"readv2"},{"code":"F396400","system":"readv2"},{"code":"G5y8.00","system":"readv2"},{"code":"G5yA.00","system":"readv2"},{"code":"H570.00","system":"readv2"},{"code":"N010A00","system":"readv2"},{"code":"N02y800","system":"readv2"},{"code":"N040B00","system":"readv2"},{"code":"N040D00","system":"readv2"},{"code":"N040N00","system":"readv2"},{"code":"N040P00","system":"readv2"},{"code":"N040T00","system":"readv2"},{"code":"N042100","system":"readv2"},{"code":"N04y000","system":"readv2"},{"code":"N100.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('rheumatoid-arthritis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["rheumatoid-arthritis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["rheumatoid-arthritis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["rheumatoid-arthritis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
