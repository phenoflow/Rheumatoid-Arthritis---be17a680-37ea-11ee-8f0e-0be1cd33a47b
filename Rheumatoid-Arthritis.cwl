cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ulcerative-rheumatoid-arthritis---primary:
    run: ulcerative-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  rheumatoid-arthritis-psoriasis---primary:
    run: rheumatoid-arthritis-psoriasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ulcerative-rheumatoid-arthritis---primary/output
  arthritis---primary:
    run: arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-psoriasis---primary/output
  rheumatoid-arthritis-activity---primary:
    run: rheumatoid-arthritis-activity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: arthritis---primary/output
  rheumatoid-arthritis-gouty---primary:
    run: rheumatoid-arthritis-gouty---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-activity---primary/output
  rheumatoid-arthritis---primary:
    run: rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-gouty---primary/output
  rheumatoid-arthritis-liver---primary:
    run: rheumatoid-arthritis-liver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-reiter---primary:
    run: rheumatoid-arthritis-reiter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-liver---primary/output
  rheumatoid-arthritis-hypopharynx---primary:
    run: rheumatoid-arthritis-hypopharynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-reiter---primary/output
  rheumatoid-arthritis-lipstick---primary:
    run: rheumatoid-arthritis-lipstick---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-hypopharynx---primary/output
  rheumatoid-arthritis-adenocarcinoma---primary:
    run: rheumatoid-arthritis-adenocarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-lipstick---primary/output
  rheumatoid-arthritis-chondrocalcinosisdicalcium---primary:
    run: rheumatoid-arthritis-chondrocalcinosisdicalcium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-adenocarcinoma---primary/output
  rheumatoid-arthritis-frenulum---primary:
    run: rheumatoid-arthritis-frenulum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-chondrocalcinosisdicalcium---primary/output
  temporal-rheumatoid-arthritis---primary:
    run: temporal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-frenulum---primary/output
  rheumatoid-arthritis-overlap---primary:
    run: rheumatoid-arthritis-overlap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: temporal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-tongue---primary:
    run: rheumatoid-arthritis-tongue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-overlap---primary/output
  rheumatoid-arthritis-third---primary:
    run: rheumatoid-arthritis-third---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-tongue---primary/output
  rheumatoid-arthritis-dorsal---primary:
    run: rheumatoid-arthritis-dorsal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-third---primary/output
  lateral-rheumatoid-arthritis---primary:
    run: lateral-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-dorsal---primary/output
  ventral-rheumatoid-arthritis---primary:
    run: ventral-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: lateral-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-anterior---primary:
    run: rheumatoid-arthritis-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ventral-rheumatoid-arthritis---primary/output
  junctional-rheumatoid-arthritis---primary:
    run: junctional-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-anterior---primary/output
  tonsillar-rheumatoid-arthritis---primary:
    run: tonsillar-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: junctional-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-majora---primary:
    run: rheumatoid-arthritis-majora---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: tonsillar-rheumatoid-arthritis---primary/output
  parotid-rheumatoid-arthritis---primary:
    run: parotid-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-majora---primary/output
  submandibular-rheumatoid-arthritis---primary:
    run: submandibular-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: parotid-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-gland---primary:
    run: rheumatoid-arthritis-gland---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: submandibular-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-neoplasm---primary:
    run: rheumatoid-arthritis-neoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-gland---primary/output
  upper-rheumatoid-arthritis---primary:
    run: upper-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-neoplasm---primary/output
  lower-rheumatoid-arthritis---primary:
    run: lower-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: upper-rheumatoid-arthritis---primary/output
  other-rheumatoid-arthritis---primary:
    run: other-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: lower-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-floor---primary:
    run: rheumatoid-arthritis-floor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: other-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-portion---primary:
    run: rheumatoid-arthritis-portion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-floor---primary/output
  rheumatoid-arthritis-mouth---primary:
    run: rheumatoid-arthritis-mouth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-portion---primary/output
  rheumatoid-arthritis-cheek---primary:
    run: rheumatoid-arthritis-cheek---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-mouth---primary/output
  buccal-rheumatoid-arthritis---primary:
    run: buccal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-cheek---primary/output
  rheumatoid-arthritis-sulcu---primary:
    run: rheumatoid-arthritis-sulcu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: buccal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-palate---primary:
    run: rheumatoid-arthritis-palate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-sulcu---primary/output
  rheumatoid-arthritis-kaposis---primary:
    run: rheumatoid-arthritis-kaposis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-palate---primary/output
  rheumatoid-arthritis-oropharynx---primary:
    run: rheumatoid-arthritis-oropharynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-kaposis---primary/output
  faucial-rheumatoid-arthritis---primary:
    run: faucial-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-oropharynx---primary/output
  pillar-rheumatoid-arthritis---primary:
    run: pillar-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: faucial-rheumatoid-arthritis---primary/output
  pharyngeal-rheumatoid-arthritis---primary:
    run: pharyngeal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: pillar-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-epiglotti---primary:
    run: rheumatoid-arthritis-epiglotti---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: pharyngeal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-pharynx---primary:
    run: rheumatoid-arthritis-pharynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-epiglotti---primary/output
  laryngeal-rheumatoid-arthritis---primary:
    run: laryngeal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-pharynx---primary/output
  rheumatoid-arthritis-septum---primary:
    run: rheumatoid-arthritis-septum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: laryngeal-rheumatoid-arthritis---primary/output
  regional-rheumatoid-arthritis---primary:
    run: regional-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-septum---primary/output
  rheumatoid-arthritis-sinus---primary:
    run: rheumatoid-arthritis-sinus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: regional-rheumatoid-arthritis---primary/output
  hypopharyngeal-rheumatoid-arthritis---primary:
    run: hypopharyngeal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-sinus---primary/output
  rheumatoid-arthritis-retroperitoneum---primary:
    run: rheumatoid-arthritis-retroperitoneum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: hypopharyngeal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-oesophagu---primary:
    run: rheumatoid-arthritis-oesophagu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-retroperitoneum---primary/output
  endocervical-rheumatoid-arthritis---primary:
    run: endocervical-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-oesophagu---primary/output
  thoracic-rheumatoid-arthritis---primary:
    run: thoracic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: endocervical-rheumatoid-arthritis---primary/output
  abdominal-rheumatoid-arthritis---primary:
    run: abdominal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: thoracic-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-cancer---primary:
    run: rheumatoid-arthritis-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: abdominal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-stomach---primary:
    run: rheumatoid-arthritis-stomach---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-cancer---primary/output
  rheumatoid-arthritis-cardia---primary:
    run: rheumatoid-arthritis-cardia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-stomach---primary/output
  rheumatoid-arthritis-orifice---primary:
    run: rheumatoid-arthritis-orifice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-cardia---primary/output
  rheumatoid-arthritis-pylorus---primary:
    run: rheumatoid-arthritis-pylorus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-orifice---primary/output
  pyloric-rheumatoid-arthritis---primary:
    run: pyloric-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-pylorus---primary/output
  rheumatoid-arthritis-antrum---primary:
    run: rheumatoid-arthritis-antrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: pyloric-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-fundu---primary:
    run: rheumatoid-arthritis-fundu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-antrum---primary/output
  rheumatoid-arthritis-curve---primary:
    run: rheumatoid-arthritis-curve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-fundu---primary/output
  great-rheumatoid-arthritis---primary:
    run: great-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-curve---primary/output
  rheumatoid-arthritis-posterior---primary:
    run: rheumatoid-arthritis-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: great-rheumatoid-arthritis---primary/output
  intestinal-rheumatoid-arthritis---primary:
    run: intestinal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-posterior---primary/output
  rheumatoid-arthritis-duodenum---primary:
    run: rheumatoid-arthritis-duodenum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: intestinal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-jejunum---primary:
    run: rheumatoid-arthritis-jejunum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-duodenum---primary/output
  rheumatoid-arthritis-ileum---primary:
    run: rheumatoid-arthritis-ileum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-jejunum---primary/output
  rheumatoid-arthritis-colon---primary:
    run: rheumatoid-arthritis-colon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-ileum---primary/output
  rheumatoid-arthritis-flexure---primary:
    run: rheumatoid-arthritis-flexure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-colon---primary/output
  rectosigmoid-rheumatoid-arthritis---primary:
    run: rectosigmoid-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-flexure---primary/output
  rheumatoid-arthritis-caecum---primary:
    run: rheumatoid-arthritis-caecum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: rectosigmoid-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-rectum---primary:
    run: rheumatoid-arthritis-rectum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-caecum---primary/output
  canal-rheumatoid-arthritis---primary:
    run: canal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-rectum---primary/output
  rheumatoid-arthritis-specified---primary:
    run: rheumatoid-arthritis-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: canal-rheumatoid-arthritis---primary/output
  hepatic-rheumatoid-arthritis---primary:
    run: hepatic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-specified---primary/output
  primary-rheumatoid-arthritis---primary:
    run: primary-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: hepatic-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-biliary---primary:
    run: rheumatoid-arthritis-biliary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: primary-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-gallbladder---primary:
    run: rheumatoid-arthritis-gallbladder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-biliary---primary/output
  common-rheumatoid-arthritis---primary:
    run: common-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-gallbladder---primary/output
  pancreatic-rheumatoid-arthritis---primary:
    run: pancreatic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: common-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-tissue---primary:
    run: rheumatoid-arthritis-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: pancreatic-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-mesothelioma---primary:
    run: rheumatoid-arthritis-mesothelioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-tissue---primary/output
  parietal-rheumatoid-arthritis---primary:
    run: parietal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-mesothelioma---primary/output
  intrapelvic-rheumatoid-arthritis---primary:
    run: intrapelvic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: parietal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-reticuloendotheliosis---primary:
    run: rheumatoid-arthritis-reticuloendotheliosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: intrapelvic-rheumatoid-arthritis---primary/output
  mesenteric-rheumatoid-arthritis---primary:
    run: mesenteric-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-reticuloendotheliosis---primary/output
  rheumatoid-arthritis-bowel---primary:
    run: rheumatoid-arthritis-bowel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: mesenteric-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-spleen---primary:
    run: rheumatoid-arthritis-spleen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-bowel---primary/output
  systemic-rheumatoid-arthritis---primary:
    run: systemic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-spleen---primary/output
  rheumatoid-arthritis-accessory---primary:
    run: rheumatoid-arthritis-accessory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: systemic-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-nasal---primary:
    run: rheumatoid-arthritis-nasal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-accessory---primary/output
  rheumatoid-arthritis-cartilage---primary:
    run: rheumatoid-arthritis-cartilage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-nasal---primary/output
  rheumatoid-arthritis-bcell---primary:
    run: rheumatoid-arthritis-bcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-cartilage---primary/output
  tympanic-rheumatoid-arthritis---primary:
    run: tympanic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-bcell---primary/output
  axillary-rheumatoid-arthritis---primary:
    run: axillary-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: tympanic-rheumatoid-arthritis---primary/output
  ethmoid-rheumatoid-arthritis---primary:
    run: ethmoid-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: axillary-rheumatoid-arthritis---primary/output
  frontal-rheumatoid-arthritis---primary:
    run: frontal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: ethmoid-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-heart---primary:
    run: rheumatoid-arthritis-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: frontal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-larynx---primary:
    run: rheumatoid-arthritis-larynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-heart---primary/output
  thyroid-rheumatoid-arthritis---primary:
    run: thyroid-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-larynx---primary/output
  rheumatoid-arthritis-trachea---primary:
    run: rheumatoid-arthritis-trachea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: thyroid-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-bronchu---primary:
    run: rheumatoid-arthritis-bronchu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-trachea---primary/output
  rheumatoid-arthritis-pancoast's---primary:
    run: rheumatoid-arthritis-pancoast's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-bronchu---primary/output
  rheumatoid-arthritis-middle---primary:
    run: rheumatoid-arthritis-middle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-pancoast's---primary/output
  rheumatoid-arthritis-pleura---primary:
    run: rheumatoid-arthritis-pleura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-middle---primary/output
  mediastinal-rheumatoid-arthritis---primary:
    run: mediastinal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-pleura---primary/output
  rheumatoid-arthritis-thymu---primary:
    run: rheumatoid-arthritis-thymu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: mediastinal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-pericardium---primary:
    run: rheumatoid-arthritis-pericardium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-thymu---primary/output
  rheumatoid-arthritis-respiratory---primary:
    run: rheumatoid-arthritis-respiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-pericardium---primary/output
  articular-rheumatoid-arthritis---primary:
    run: articular-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-respiratory---primary/output
  rheumatoid-arthritis-chondroma---primary:
    run: rheumatoid-arthritis-chondroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: articular-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-osteoma---primary:
    run: rheumatoid-arthritis-osteoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-chondroma---primary/output
  rheumatoid-arthritis-skull---primary:
    run: rheumatoid-arthritis-skull---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-osteoma---primary/output
  rheumatoid-arthritis-bones---primary:
    run: rheumatoid-arthritis-bones---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-skull---primary/output
  occipital-rheumatoid-arthritis---primary:
    run: occipital-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-bones---primary/output
  rheumatoid-arthritis-orbit---primary:
    run: rheumatoid-arthritis-orbit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: occipital-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-axilla---primary:
    run: rheumatoid-arthritis-axilla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-orbit---primary/output
  rheumatoid-arthritis-column---primary:
    run: rheumatoid-arthritis-column---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-axilla---primary/output
  vertebral-rheumatoid-arthritis---primary:
    run: vertebral-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-column---primary/output
  rheumatoid-arthritis-clavicle---primary:
    run: rheumatoid-arthritis-clavicle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: vertebral-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-sternum---primary:
    run: rheumatoid-arthritis-sternum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-clavicle---primary/output
  rheumatoid-arthritis-scapula---primary:
    run: rheumatoid-arthritis-scapula---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-sternum---primary/output
  rheumatoid-arthritis-carpal---primary:
    run: rheumatoid-arthritis-carpal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-scapula---primary/output
  rheumatoid-arthritis-phalange---primary:
    run: rheumatoid-arthritis-phalange---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-carpal---primary/output
  rheumatoid-arthritis-coccyx---primary:
    run: rheumatoid-arthritis-coccyx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-phalange---primary/output
  coccygeal-rheumatoid-arthritis---primary:
    run: coccygeal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-coccyx---primary/output
  sacral-rheumatoid-arthritis---primary:
    run: sacral-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: coccygeal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-metatarsal---primary:
    run: rheumatoid-arthritis-metatarsal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: sacral-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-sarcoma---primary:
    run: rheumatoid-arthritis-sarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-metatarsal---primary/output
  connective-rheumatoid-arthritis---primary:
    run: connective-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-sarcoma---primary/output
  rheumatoid-arthritis-surface---primary:
    run: rheumatoid-arthritis-surface---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: connective-rheumatoid-arthritis---primary/output
  eyelid-rheumatoid-arthritis---primary:
    run: eyelid-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-surface---primary/output
  rheumatoid-arthritis-shoulder---primary:
    run: rheumatoid-arthritis-shoulder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: eyelid-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-forearm---primary:
    run: rheumatoid-arthritis-forearm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-shoulder---primary/output
  rheumatoid-arthritis-finger---primary:
    run: rheumatoid-arthritis-finger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-forearm---primary/output
  rheumatoid-arthritis-thumb---primary:
    run: rheumatoid-arthritis-thumb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-finger---primary/output
  rheumatoid-arthritis-thigh---primary:
    run: rheumatoid-arthritis-thigh---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-thumb---primary/output
  popliteal-rheumatoid-arthritis---primary:
    run: popliteal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-thigh---primary/output
  rheumatoid-arthritis-thorax---primary:
    run: rheumatoid-arthritis-thorax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: popliteal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-abdoman---primary:
    run: rheumatoid-arthritis-abdoman---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-thorax---primary/output
  rheumatoid-arthritis-spine---primary:
    run: rheumatoid-arthritis-spine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-abdoman---primary/output
  rheumatoid-arthritis-buttock---primary:
    run: rheumatoid-arthritis-buttock---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-spine---primary/output
  rheumatoid-arthritis-perineum---primary:
    run: rheumatoid-arthritis-perineum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-buttock---primary/output
  rheumatoid-arthritis-trunk---primary:
    run: rheumatoid-arthritis-trunk---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-perineum---primary/output
  rheumatoid-arthritis-melanoma---primary:
    run: rheumatoid-arthritis-melanoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-trunk---primary/output
  auricular-rheumatoid-arthritis---primary:
    run: auricular-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-melanoma---primary/output
  rheumatoid-arthritis-auditory---primary:
    run: rheumatoid-arthritis-auditory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: auricular-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-scalp---primary:
    run: rheumatoid-arthritis-scalp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-auditory---primary/output
  rheumatoid-arthritis-breast---primary:
    run: rheumatoid-arthritis-breast---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-scalp---primary/output
  rheumatoid-arthritis-chest---primary:
    run: rheumatoid-arthritis-chest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-breast---primary/output
  rheumatoid-arthritis-scrotum---primary:
    run: rheumatoid-arthritis-scrotum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-chest---primary/output
  rheumatoid-arthritis-ankle---primary:
    run: rheumatoid-arthritis-ankle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-scrotum---primary/output
  female-rheumatoid-arthritis---primary:
    run: female-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-ankle---primary/output
  rheumatoid-arthritis-areola---primary:
    run: rheumatoid-arthritis-areola---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: female-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-nipple---primary:
    run: rheumatoid-arthritis-nipple---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-areola---primary/output
  rheumatoid-arthritis-quadrant---primary:
    run: rheumatoid-arthritis-quadrant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-nipple---primary/output
  ectopic-rheumatoid-arthritis---primary:
    run: ectopic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-quadrant---primary/output
  genitourinary-rheumatoid-arthritis---primary:
    run: genitourinary-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: ectopic-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-uterus---primary:
    run: rheumatoid-arthritis-uterus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: genitourinary-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-endocervix---primary:
    run: rheumatoid-arthritis-endocervix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-uterus---primary/output
  rheumatoid-arthritis-cervix---primary:
    run: rheumatoid-arthritis-cervix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-endocervix---primary/output
  rheumatoid-arthritis-carcinoma---primary:
    run: rheumatoid-arthritis-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-cervix---primary/output
  rheumatoid-arthritis-excluding---primary:
    run: rheumatoid-arthritis-excluding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-carcinoma---primary/output
  rheumatoid-arthritis-uterine---primary:
    run: rheumatoid-arthritis-uterine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-excluding---primary/output
  rheumatoid-arthritis-endometrium---primary:
    run: rheumatoid-arthritis-endometrium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-uterine---primary/output
  rheumatoid-arthritis-isthmu---primary:
    run: rheumatoid-arthritis-isthmu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-endometrium---primary/output
  rheumatoid-arthritis-adnexa---primary:
    run: rheumatoid-arthritis-adnexa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-isthmu---primary/output
  rheumatoid-arthritis-ovary---primary:
    run: rheumatoid-arthritis-ovary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-adnexa---primary/output
  genital-rheumatoid-arthritis---primary:
    run: genital-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-ovary---primary/output
  rheumatoid-arthritis-vagina---primary:
    run: rheumatoid-arthritis-vagina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: genital-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-labia---primary:
    run: rheumatoid-arthritis-labia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-vagina---primary/output
  rheumatoid-arthritis-vulva---primary:
    run: rheumatoid-arthritis-vulva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-labia---primary/output
  rheumatoid-arthritis-prostate---primary:
    run: rheumatoid-arthritis-prostate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-vulva---primary/output
  rheumatoid-arthritis-penis---primary:
    run: rheumatoid-arthritis-penis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-prostate---primary/output
  rheumatoid-arthritis-ureter---primary:
    run: rheumatoid-arthritis-ureter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-penis---primary/output
  rheumatoid-arthritis-kidney---primary:
    run: rheumatoid-arthritis-kidney---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-ureter---primary/output
  adrenal-rheumatoid-arthritis---primary:
    run: adrenal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-kidney---primary/output
  rheumatoid-arthritis-hypernephroma---primary:
    run: rheumatoid-arthritis-hypernephroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: adrenal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-urethra---primary:
    run: rheumatoid-arthritis-urethra---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-hypernephroma---primary/output
  rheumatoid-arthritis-eyeball---primary:
    run: rheumatoid-arthritis-eyeball---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-urethra---primary/output
  rheumatoid-arthritis-retina---primary:
    run: rheumatoid-arthritis-retina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-eyeball---primary/output
  lacrimal-rheumatoid-arthritis---primary:
    run: lacrimal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-retina---primary/output
  rheumatoid-arthritis-conjunctiva---primary:
    run: rheumatoid-arthritis-conjunctiva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: lacrimal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-cornea---primary:
    run: rheumatoid-arthritis-cornea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-conjunctiva---primary/output
  choroid-rheumatoid-arthritis---primary:
    run: choroid-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-cornea---primary/output
  rheumatoid-arthritis-sacroiliac---primary:
    run: rheumatoid-arthritis-sacroiliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: choroid-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-brain---primary:
    run: rheumatoid-arthritis-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-sacroiliac---primary/output
  rheumatoid-arthritis-tumour---primary:
    run: rheumatoid-arthritis-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-brain---primary/output
  rheumatoid-arthritis-cerebrum---primary:
    run: rheumatoid-arthritis-cerebrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-tumour---primary/output
  rheumatoid-arthritis-cortex---primary:
    run: rheumatoid-arthritis-cortex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-cerebrum---primary/output
  cerebral-rheumatoid-arthritis---primary:
    run: cerebral-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-cortex---primary/output
  rheumatoid-arthritis-medulla---primary:
    run: rheumatoid-arthritis-medulla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: cerebral-rheumatoid-arthritis---primary/output
  spondylopathy-rheumatoid-arthritis---primary:
    run: spondylopathy-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-medulla---primary/output
  rheumatoid-arthritis-corpus---primary:
    run: rheumatoid-arthritis-corpus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: spondylopathy-rheumatoid-arthritis---primary/output
  cranial-rheumatoid-arthritis---primary:
    run: cranial-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-corpus---primary/output
  rheumatoid-arthritis-nerve---primary:
    run: rheumatoid-arthritis-nerve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: cranial-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-meninge---primary:
    run: rheumatoid-arthritis-meninge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-nerve---primary/output
  spinal-rheumatoid-arthritis---primary:
    run: spinal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-meninge---primary/output
  peripheral-rheumatoid-arthritis---primary:
    run: peripheral-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: spinal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-structure---primary:
    run: rheumatoid-arthritis-structure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: peripheral-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-phaeochromocytoma---primary:
    run: rheumatoid-arthritis-phaeochromocytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule205
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-structure---primary/output
  pituitary-rheumatoid-arthritis---primary:
    run: pituitary-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule206
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-phaeochromocytoma---primary/output
  aortic-rheumatoid-arthritis---primary:
    run: aortic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule207
      potentialCases:
        id: potentialCases
        source: pituitary-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-neuroblastoma---primary:
    run: rheumatoid-arthritis-neuroblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule208
      potentialCases:
        id: potentialCases
        source: aortic-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-involvement---primary:
    run: rheumatoid-arthritis-involvement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule209
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-neuroblastoma---primary/output
  rheumatoid-arthritis-endocrine---primary:
    run: rheumatoid-arthritis-endocrine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule210
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-involvement---primary/output
  rheumatoid-arthritis-illdefined---primary:
    run: rheumatoid-arthritis-illdefined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule211
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-endocrine---primary/output
  still-rheumatoid-arthritis---primary:
    run: still-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule212
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-illdefined---primary/output
  lymphocytic-rheumatoid-arthritis---primary:
    run: lymphocytic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule213
      potentialCases:
        id: potentialCases
        source: still-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-metastas---primary:
    run: rheumatoid-arthritis-metastas---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule214
      potentialCases:
        id: potentialCases
        source: lymphocytic-rheumatoid-arthritis---primary/output
  mastoid-rheumatoid-arthritis---primary:
    run: mastoid-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule215
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-metastas---primary/output
  internal-rheumatoid-arthritis---primary:
    run: internal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule216
      potentialCases:
        id: potentialCases
        source: mastoid-rheumatoid-arthritis---primary/output
  postdysenteric-rheumatoid-arthritis---primary:
    run: postdysenteric-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule217
      potentialCases:
        id: potentialCases
        source: internal-rheumatoid-arthritis---primary/output
  tracheobronchial-rheumatoid-arthritis---primary:
    run: tracheobronchial-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule218
      potentialCases:
        id: potentialCases
        source: postdysenteric-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-inferior---primary:
    run: rheumatoid-arthritis-inferior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule219
      potentialCases:
        id: potentialCases
        source: tracheobronchial-rheumatoid-arthritis---primary/output
  inguinal-rheumatoid-arthritis---primary:
    run: inguinal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule220
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-inferior---primary/output
  superficial-rheumatoid-arthritis---primary:
    run: superficial-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule221
      potentialCases:
        id: potentialCases
        source: inguinal-rheumatoid-arthritis---primary/output
  secondary-rheumatoid-arthritis---primary:
    run: secondary-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule222
      potentialCases:
        id: potentialCases
        source: superficial-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-malignant---primary:
    run: rheumatoid-arthritis-malignant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule223
      potentialCases:
        id: potentialCases
        source: secondary-rheumatoid-arthritis---primary/output
  digestive-rheumatoid-arthritis---primary:
    run: digestive-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule224
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-malignant---primary/output
  multiple-rheumatoid-arthritis---primary:
    run: multiple-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule225
      potentialCases:
        id: potentialCases
        source: digestive-rheumatoid-arthritis---primary/output
  unknown-rheumatoid-arthritis---primary:
    run: unknown-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule226
      potentialCases:
        id: potentialCases
        source: multiple-rheumatoid-arthritis---primary/output
  haematopoietic-rheumatoid-arthritis---primary:
    run: haematopoietic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule227
      potentialCases:
        id: potentialCases
        source: unknown-rheumatoid-arthritis---primary/output
  lymphocytichistiocytic-rheumatoid-arthritis---primary:
    run: lymphocytichistiocytic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule228
      potentialCases:
        id: potentialCases
        source: haematopoietic-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-burkitt---primary:
    run: rheumatoid-arthritis-burkitt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule229
      potentialCases:
        id: potentialCases
        source: lymphocytichistiocytic-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-nonhodgkin---primary:
    run: rheumatoid-arthritis-nonhodgkin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule230
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-burkitt---primary/output
  rheumatoid-arthritis-granuloma---primary:
    run: rheumatoid-arthritis-granuloma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule231
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-nonhodgkin---primary/output
  rheumatoid-arthritis-predominance---primary:
    run: rheumatoid-arthritis-predominance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule232
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-granuloma---primary/output
  rheumatoid-arthritis-sclerosis---primary:
    run: rheumatoid-arthritis-sclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule233
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-predominance---primary/output
  rheumatoid-arthritis-cellularity---primary:
    run: rheumatoid-arthritis-cellularity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule234
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-sclerosis---primary/output
  rheumatoid-arthritis-depletion---primary:
    run: rheumatoid-arthritis-depletion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule235
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-cellularity---primary/output
  nodular-rheumatoid-arthritis---primary:
    run: nodular-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule236
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-depletion---primary/output
  rheumatoid-arthritis-fungoide---primary:
    run: rheumatoid-arthritis-fungoide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule237
      potentialCases:
        id: potentialCases
        source: nodular-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-sezary---primary:
    run: rheumatoid-arthritis-sezary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule238
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-fungoide---primary/output
  rheumatoid-arthritis-histiocytosis---primary:
    run: rheumatoid-arthritis-histiocytosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule239
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-sezary---primary/output
  rheumatoid-arthritis-letterersiwe---primary:
    run: rheumatoid-arthritis-letterersiwe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule240
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-histiocytosis---primary/output
  noninfective-rheumatoid-arthritis---primary:
    run: noninfective-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule241
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-letterersiwe---primary/output
  rheumatoid-arthritis-diffuse---primary:
    run: rheumatoid-arthritis-diffuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule242
      potentialCases:
        id: potentialCases
        source: noninfective-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-mucosa---primary:
    run: rheumatoid-arthritis-mucosa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule243
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-diffuse---primary/output
  rheumatoid-arthritis-maltoma---primary:
    run: rheumatoid-arthritis-maltoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule244
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-mucosa---primary/output
  follicular-rheumatoid-arthritis---primary:
    run: follicular-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule245
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-maltoma---primary/output
  rheumatoid-arthritis-lymphoma---primary:
    run: rheumatoid-arthritis-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule246
      potentialCases:
        id: potentialCases
        source: follicular-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-tcell---primary:
    run: rheumatoid-arthritis-tcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule247
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-lymphoma---primary/output
  immunoproliferative-rheumatoid-arthritis---primary:
    run: immunoproliferative-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule248
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-tcell---primary/output
  rheumatoid-arthritis-myeloma---primary:
    run: rheumatoid-arthritis-myeloma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule249
      potentialCases:
        id: potentialCases
        source: immunoproliferative-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-kahler's---primary:
    run: rheumatoid-arthritis-kahler's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule250
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-myeloma---primary/output
  rheumatoid-arthritis-plasmacytoma---primary:
    run: rheumatoid-arthritis-plasmacytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule251
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-kahler's---primary/output
  leukaemic-rheumatoid-arthritis---primary:
    run: leukaemic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule252
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-plasmacytoma---primary/output
  rheumatoid-arthritis-subacute---primary:
    run: rheumatoid-arthritis-subacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule253
      potentialCases:
        id: potentialCases
        source: leukaemic-rheumatoid-arthritis---primary/output
  adult-rheumatoid-arthritis---primary:
    run: adult-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule254
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-subacute---primary/output
  granulocytic-rheumatoid-arthritis---primary:
    run: granulocytic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule255
      potentialCases:
        id: potentialCases
        source: adult-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-chloroma---primary:
    run: rheumatoid-arthritis-chloroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule256
      potentialCases:
        id: potentialCases
        source: granulocytic-rheumatoid-arthritis---primary/output
  myelomonocytic-rheumatoid-arthritis---primary:
    run: myelomonocytic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule257
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-chloroma---primary/output
  rheumatoid-arthritis-erythraemia---primary:
    run: rheumatoid-arthritis-erythraemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule258
      potentialCases:
        id: potentialCases
        source: myelomonocytic-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-guglielmo's---primary:
    run: rheumatoid-arthritis-guglielmo's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule259
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-erythraemia---primary/output
  myeloproliferative-rheumatoid-arthritis---primary:
    run: myeloproliferative-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule260
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-guglielmo's---primary/output
  rheumatoid-arthritis-crohn---primary:
    run: rheumatoid-arthritis-crohn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule261
      potentialCases:
        id: potentialCases
        source: myeloproliferative-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-colitis---primary:
    run: rheumatoid-arthritis-colitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule262
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-crohn---primary/output
  rheumatoid-arthritis-exacerbation---primary:
    run: rheumatoid-arthritis-exacerbation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule263
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-colitis---primary/output
  similar-rheumatoid-arthritis---primary:
    run: similar-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule264
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-exacerbation---primary/output
  psoriatic-rheumatoid-arthritis---primary:
    run: psoriatic-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule265
      potentialCases:
        id: potentialCases
        source: similar-rheumatoid-arthritis---primary/output
  distal-rheumatoid-arthritis---primary:
    run: distal-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule266
      potentialCases:
        id: potentialCases
        source: psoriatic-rheumatoid-arthritis---primary/output
  large-rheumatoid-arthritis---primary:
    run: large-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule267
      potentialCases:
        id: potentialCases
        source: distal-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-acquired---primary:
    run: rheumatoid-arthritis-acquired---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule268
      potentialCases:
        id: potentialCases
        source: large-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-behcet---primary:
    run: rheumatoid-arthritis-behcet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule269
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-acquired---primary/output
  bacterial-rheumatoid-arthritis---primary:
    run: bacterial-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule270
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-behcet---primary/output
  arthropathy-rheumatoid-arthritis---primary:
    run: arthropathy-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule271
      potentialCases:
        id: potentialCases
        source: bacterial-rheumatoid-arthritis---primary/output
  viral-rheumatoid-arthritis---primary:
    run: viral-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule272
      potentialCases:
        id: potentialCases
        source: arthropathy-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-mycoses---primary:
    run: rheumatoid-arthritis-mycoses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule273
      potentialCases:
        id: potentialCases
        source: viral-rheumatoid-arthritis---primary/output
  reactive-rheumatoid-arthritis---primary:
    run: reactive-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule274
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-mycoses---primary/output
  rheumatoid-arthritis-elbow---primary:
    run: rheumatoid-arthritis-elbow---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule275
      potentialCases:
        id: potentialCases
        source: reactive-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-wrist---primary:
    run: rheumatoid-arthritis-wrist---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule276
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-elbow---primary/output
  rheumatoid-arthritis-crystal---primary:
    run: rheumatoid-arthritis-crystal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule277
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-wrist---primary/output
  rheumatoid-arthritis-pseudogout---primary:
    run: rheumatoid-arthritis-pseudogout---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule278
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-crystal---primary/output
  rheumatoid-arthritis-pyrophosphate---primary:
    run: rheumatoid-arthritis-pyrophosphate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule279
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-pseudogout---primary/output
  rheumatoid-arthritis-inflammatory---primary:
    run: rheumatoid-arthritis-inflammatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule280
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-pyrophosphate---primary/output
  rheumatoid-arthritis-joint---primary:
    run: rheumatoid-arthritis-joint---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule281
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-inflammatory---primary/output
  rheumatoid-arthritis-lesser---primary:
    run: rheumatoid-arthritis-lesser---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule282
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-joint---primary/output
  rheumatoid-arthritis-nodule---primary:
    run: rheumatoid-arthritis-nodule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule283
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-lesser---primary/output
  rheumatoid-arthritis-felty's---primary:
    run: rheumatoid-arthritis-felty's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule284
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-nodule---primary/output
  juvenile-rheumatoid-arthritis---primary:
    run: juvenile-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule285
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-felty's---primary/output
  seropositive-rheumatoid-arthritis---primary:
    run: seropositive-rheumatoid-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule286
      potentialCases:
        id: potentialCases
        source: juvenile-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-caplan's---primary:
    run: rheumatoid-arthritis-caplan's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule287
      potentialCases:
        id: potentialCases
        source: seropositive-rheumatoid-arthritis---primary/output
  rheumatoid-arthritis-associated---primary:
    run: rheumatoid-arthritis-associated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule288
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-caplan's---primary/output
  rheumatoid-arthritis-index---primary:
    run: rheumatoid-arthritis-index---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule289
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-associated---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule290
      potentialCases:
        id: potentialCases
        source: rheumatoid-arthritis-index---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
  inputModule205:
    id: inputModule205
    doc: Python implementation unit
    type: File
  inputModule206:
    id: inputModule206
    doc: Python implementation unit
    type: File
  inputModule207:
    id: inputModule207
    doc: Python implementation unit
    type: File
  inputModule208:
    id: inputModule208
    doc: Python implementation unit
    type: File
  inputModule209:
    id: inputModule209
    doc: Python implementation unit
    type: File
  inputModule210:
    id: inputModule210
    doc: Python implementation unit
    type: File
  inputModule211:
    id: inputModule211
    doc: Python implementation unit
    type: File
  inputModule212:
    id: inputModule212
    doc: Python implementation unit
    type: File
  inputModule213:
    id: inputModule213
    doc: Python implementation unit
    type: File
  inputModule214:
    id: inputModule214
    doc: Python implementation unit
    type: File
  inputModule215:
    id: inputModule215
    doc: Python implementation unit
    type: File
  inputModule216:
    id: inputModule216
    doc: Python implementation unit
    type: File
  inputModule217:
    id: inputModule217
    doc: Python implementation unit
    type: File
  inputModule218:
    id: inputModule218
    doc: Python implementation unit
    type: File
  inputModule219:
    id: inputModule219
    doc: Python implementation unit
    type: File
  inputModule220:
    id: inputModule220
    doc: Python implementation unit
    type: File
  inputModule221:
    id: inputModule221
    doc: Python implementation unit
    type: File
  inputModule222:
    id: inputModule222
    doc: Python implementation unit
    type: File
  inputModule223:
    id: inputModule223
    doc: Python implementation unit
    type: File
  inputModule224:
    id: inputModule224
    doc: Python implementation unit
    type: File
  inputModule225:
    id: inputModule225
    doc: Python implementation unit
    type: File
  inputModule226:
    id: inputModule226
    doc: Python implementation unit
    type: File
  inputModule227:
    id: inputModule227
    doc: Python implementation unit
    type: File
  inputModule228:
    id: inputModule228
    doc: Python implementation unit
    type: File
  inputModule229:
    id: inputModule229
    doc: Python implementation unit
    type: File
  inputModule230:
    id: inputModule230
    doc: Python implementation unit
    type: File
  inputModule231:
    id: inputModule231
    doc: Python implementation unit
    type: File
  inputModule232:
    id: inputModule232
    doc: Python implementation unit
    type: File
  inputModule233:
    id: inputModule233
    doc: Python implementation unit
    type: File
  inputModule234:
    id: inputModule234
    doc: Python implementation unit
    type: File
  inputModule235:
    id: inputModule235
    doc: Python implementation unit
    type: File
  inputModule236:
    id: inputModule236
    doc: Python implementation unit
    type: File
  inputModule237:
    id: inputModule237
    doc: Python implementation unit
    type: File
  inputModule238:
    id: inputModule238
    doc: Python implementation unit
    type: File
  inputModule239:
    id: inputModule239
    doc: Python implementation unit
    type: File
  inputModule240:
    id: inputModule240
    doc: Python implementation unit
    type: File
  inputModule241:
    id: inputModule241
    doc: Python implementation unit
    type: File
  inputModule242:
    id: inputModule242
    doc: Python implementation unit
    type: File
  inputModule243:
    id: inputModule243
    doc: Python implementation unit
    type: File
  inputModule244:
    id: inputModule244
    doc: Python implementation unit
    type: File
  inputModule245:
    id: inputModule245
    doc: Python implementation unit
    type: File
  inputModule246:
    id: inputModule246
    doc: Python implementation unit
    type: File
  inputModule247:
    id: inputModule247
    doc: Python implementation unit
    type: File
  inputModule248:
    id: inputModule248
    doc: Python implementation unit
    type: File
  inputModule249:
    id: inputModule249
    doc: Python implementation unit
    type: File
  inputModule250:
    id: inputModule250
    doc: Python implementation unit
    type: File
  inputModule251:
    id: inputModule251
    doc: Python implementation unit
    type: File
  inputModule252:
    id: inputModule252
    doc: Python implementation unit
    type: File
  inputModule253:
    id: inputModule253
    doc: Python implementation unit
    type: File
  inputModule254:
    id: inputModule254
    doc: Python implementation unit
    type: File
  inputModule255:
    id: inputModule255
    doc: Python implementation unit
    type: File
  inputModule256:
    id: inputModule256
    doc: Python implementation unit
    type: File
  inputModule257:
    id: inputModule257
    doc: Python implementation unit
    type: File
  inputModule258:
    id: inputModule258
    doc: Python implementation unit
    type: File
  inputModule259:
    id: inputModule259
    doc: Python implementation unit
    type: File
  inputModule260:
    id: inputModule260
    doc: Python implementation unit
    type: File
  inputModule261:
    id: inputModule261
    doc: Python implementation unit
    type: File
  inputModule262:
    id: inputModule262
    doc: Python implementation unit
    type: File
  inputModule263:
    id: inputModule263
    doc: Python implementation unit
    type: File
  inputModule264:
    id: inputModule264
    doc: Python implementation unit
    type: File
  inputModule265:
    id: inputModule265
    doc: Python implementation unit
    type: File
  inputModule266:
    id: inputModule266
    doc: Python implementation unit
    type: File
  inputModule267:
    id: inputModule267
    doc: Python implementation unit
    type: File
  inputModule268:
    id: inputModule268
    doc: Python implementation unit
    type: File
  inputModule269:
    id: inputModule269
    doc: Python implementation unit
    type: File
  inputModule270:
    id: inputModule270
    doc: Python implementation unit
    type: File
  inputModule271:
    id: inputModule271
    doc: Python implementation unit
    type: File
  inputModule272:
    id: inputModule272
    doc: Python implementation unit
    type: File
  inputModule273:
    id: inputModule273
    doc: Python implementation unit
    type: File
  inputModule274:
    id: inputModule274
    doc: Python implementation unit
    type: File
  inputModule275:
    id: inputModule275
    doc: Python implementation unit
    type: File
  inputModule276:
    id: inputModule276
    doc: Python implementation unit
    type: File
  inputModule277:
    id: inputModule277
    doc: Python implementation unit
    type: File
  inputModule278:
    id: inputModule278
    doc: Python implementation unit
    type: File
  inputModule279:
    id: inputModule279
    doc: Python implementation unit
    type: File
  inputModule280:
    id: inputModule280
    doc: Python implementation unit
    type: File
  inputModule281:
    id: inputModule281
    doc: Python implementation unit
    type: File
  inputModule282:
    id: inputModule282
    doc: Python implementation unit
    type: File
  inputModule283:
    id: inputModule283
    doc: Python implementation unit
    type: File
  inputModule284:
    id: inputModule284
    doc: Python implementation unit
    type: File
  inputModule285:
    id: inputModule285
    doc: Python implementation unit
    type: File
  inputModule286:
    id: inputModule286
    doc: Python implementation unit
    type: File
  inputModule287:
    id: inputModule287
    doc: Python implementation unit
    type: File
  inputModule288:
    id: inputModule288
    doc: Python implementation unit
    type: File
  inputModule289:
    id: inputModule289
    doc: Python implementation unit
    type: File
  inputModule290:
    id: inputModule290
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
