import 'package:flutter/material.dart';

Color primaryBlack = Color(0xff311b92);

class DataSource {
  static String quote =
      'Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear less. ';
  static String quoteAR =
      'لا نخشى أي شيء في الحياة ، بل يجب فهمه فقط. حان الوقت الآن لفهم المزيد ، حتى نخاف أقل.';
  static List questionAnswers = [
    {
      "question": "What is a coronavirus?",
      "answer":
          "Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19."
    },
    {
      "question": "What is COVID-19?",
      "answer":
          "COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019."
    },
    {
      "question": "What are the symptoms of COVID-19?",
      "answer":
          "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell. Most people (about 80%) recover from the disease without needing special treatment. Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart problems or diabetes, are more likely to develop serious illness. People with fever, cough and difficulty breathing should seek medical attention."
    },
    {
      "question": "How does COVID-19 spread?",
      "answer":
          "People can catch COVID-19 from others who have the virus. The disease can spread from person to person through small droplets from the nose or mouth which are spread when a person with COVID-19 coughs or exhales. These droplets land on objects and surfaces around the person. Other people then catch COVID-19 by touching these objects or surfaces, then touching their eyes, nose or mouth. People can also catch COVID-19 if they breathe in droplets from a person with COVID-19 who coughs out or exhales droplets. This is why it is important to stay more than 1 meter (3 feet) away from a person who is sick. \nWHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share updated findings."
    },
    {
      "question":
          "Can the virus that causes COVID-19 be transmitted through the air?",
      "answer":
          "Studies to date suggest that the virus that causes COVID-19 is mainly transmitted through contact with respiratory droplets rather than through the air"
    },
    {
      "question": "Can CoVID-19 be caught from a person who has no symptoms?",
      "answer":
          "The main way the disease spreads is through respiratory droplets expelled by someone who is coughing. The risk of catching COVID-19 from someone with no symptoms at all is very low. However, many people with COVID-19 experience only mild symptoms. This is particularly true at the early stages of the disease. It is therefore possible to catch COVID-19 from someone who has, for example, just a mild cough and does not feel ill.  WHO is assessing ongoing research on the period of transmission of COVID-19 and will continue to share updated findings.    "
    },
    {
      "question":
          "Can I catch COVID-19 from the feces of someone with the disease?",
      "answer":
          "The risk of catching COVID-19 from the feces of an infected person appears to be low. While initial investigations suggest the virus may be present in feces in some cases, spread through this route is not a main feature of the outbreak. WHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share new findings. Because this is a risk, however, it is another reason to clean hands regularly, after using the bathroom and before eating."
    },
    {
      "question": "How likely am I to catch COVID-19?",
      "answer":
          "The risk depends on where you  are - and more specifically, whether there is a COVID-19 outbreak unfolding there.\nFor most people in most locations the risk of catching COVID-19 is still low. However, there are now places around the world (cities or areas) where the disease is spreading. For people living in, or visiting, these areas the risk of catching COVID-19 is higher. Governments and health authorities are taking vigorous action every time a new case of COVID-19 is identified. Be sure to comply with any local restrictions on travel, movement or large gatherings. Cooperating with disease control efforts will reduce your risk of catching or spreading COVID-19.\nCOVID-19 outbreaks can be contained and transmission stopped, as has been shown in China and some other countries. Unfortunately, new outbreaks can emerge rapidly. It’s important to be aware of the situation where you are or intend to go. WHO publishes daily updates on the COVID-19 situation worldwide."
    },
    {
      "question": "Who is at risk of developing severe illness?",
      "answer":
          "While we are still learning about how COVID-2019 affects people, older persons and persons with pre-existing medical conditions (such as high blood pressure, heart disease, lung disease, cancer or diabetes)  appear to develop serious illness more often than others. "
    },
    {
      "question": "Should I wear a mask to protect myself?",
      "answer":
          "Only wear a mask if you are ill with COVID-19 symptoms (especially coughing) or looking after someone who may have COVID-19. Disposable face mask can only be used once. If you are not ill or looking after someone who is ill then you are wasting a mask. There is a world-wide shortage of masks, so WHO urges people to use masks wisely.\nWHO advises rational use of medical masks to avoid unnecessary wastage of precious resources and mis-use of masks\nThe most effective ways to protect yourself and others against COVID-19 are to frequently clean your hands, cover your cough with the bend of elbow or tissue and maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing"
    },
    {
      "question":
          "Are antibiotics effective in preventing or treating the COVID-19?",
      "answer":
          "No. Antibiotics do not work against viruses, they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. They should only be used as directed by a physician to treat a bacterial infection. "
    }
  ];
  static List questionAnswersAR = [
    {
      "question": "ماهو فيروس كورونا؟",
      "answer":
          "فيروسات كورونا هي فصيلة كبيرة من الفيروسات التي قد تسبب المرض للحيوان أو الإنسان. وفي البشر ، من المعروف أن العديد من فيروسات كورونا تسبب التهابات في الجهاز التنفسي تتراوح من نزلات البرد إلى أمراض أكثر شدة مثل متلازمة الشرق الأوسط التنفسية (MERS) والحادة الشديدة. متلازمة الجهاز التنفسي (سارس). أحدث فيروس كورونا تم اكتشافه يسبب مرض فيروس كورونا ."
    },
    {
      "question": "ماهو كوفيد-19؟",
      "answer":
          " هو مرض معد يسببه أحدث فيروس كورونا المكتشف. كان هذا الفيروس والمرض الجديد غير معروفين قبل بدء تفشي المرض في ووهان ، الصين ، في ديسمبر 2019"
    },
    {
      "question": "ما هي أعراض مرض كوفيد-19؟",
      "answer":
          "من أشهر أعراض كوفيد-19 الحمى والتعب والسعال الجاف. قد يعاني بعض المرضى من الأوجاع والآلام واحتقان الأنف وسيلان الأنف والتهاب الحلق أو الإسهال. عادة ما تكون هذه الأعراض خفيفة وتبدأ تدريجيًا. يصاب بعض الأشخاص بالعدوى ولكن لا تظهر عليهم أي أعراض ولا يشعرون بتوعك. يتعافى معظم الناس (حوالي 80٪) من المرض دون الحاجة إلى علاج خاص. يصاب حوالي 1 من كل 6 أشخاص يحصلون على كوفيد-19 بمرض خطير ويواجه صعوبة في التنفس. كبار السن وأولئك الذين يعانون من مشاكل طبية أساسية مثل ارتفاع ضغط الدم أو مشاكل القلب أو السكري هم أكثر عرضة للإصابة بأمراض خطيرة. يجب على الأشخاص المصابين بالحمى والسعال وصعوبة التنفس التماس العناية الطبية"
    },
    {
      "question": "كيف ينتشر كوفيد-19؟",
      "answer":
          "يمكن للناس التقاط كوفيد-19 من الآخرين المصابين بالفيروس. يمكن أن ينتشر المرض من شخص لآخر عبر قطرات صغيرة من الأنف أو الفم والتي تنتشر عندما يسعل أو يزفر الشخص المصاب كوفيد-19. تسقط هذه القطرات على الأشياء والأسطح حول الشخص. ثم يلحق الآخرون كوفيد-19 بلمس هذه الأشياء أو الأسطح ثم لمس عيونهم أو أنفهم أو فمهم. يمكن للناس أيضًا التقاط كوفيد-19 إذا استنشقوا قطرات من شخص مع كوفيد-19 يسعل أو يزفر قطرات. هذا هو السبب في أنه من المهم البقاء على بعد أكثر من متر واحد (3 أقدام) من الشخص المريض. تقوم منظمة الصحة العالمية بتقييم البحث الجاري حول طرق انتشار كوفيد-19 وستواصل مشاركة النتائج المحدثة"
    },
    {
      "question": "هل يمكن للفيروس المسبب لـ كوفيد أن ينتقل عبر الهواء؟",
      "answer":
          "تشير الدراسات حتى الآن إلى أن الفيروس الذي يسبب كوفيد-19 ينتقل بشكل أساسي من خلال ملامسة الرذاذ التنفسي وليس عن طريق الهواء"
    },
    {
      "question": "هل يمكن التقاط كوفيد-19 من إنسان لا تظهر عليه أعراض؟",
      "answer":
          "الطريقة الرئيسية لانتشار المرض هي من خلال الرذاذ التنفسي الذي يطرده شخص يسعل. احتمالية التقاط كوفيد-19 من شخص ليس لديه أعراض على الإطلاق منخفضة للغاية. ومع ذلك ، فإن العديد من الأشخاص الذين يعانون من كوفيد-19 يعانون من أعراض خفيفة فقط. هذا صحيح بشكل خاص في المراحل المبكرة من المرض. لذلك من الممكن التقاط كوفيد-19 من شخص لديه ، على سبيل المثال ، مجرد سعال خفيف ولا يشعر بالمرض. تقوم منظمة الصحة العالمية بتقييم الأبحاث الجارية حول فترة انتقال كوفيد-19 وستواصل مشاركة النتائج المحدثة."
    },
    {
      "question": "هل يمكنني التقاط كوفيد-19 من براز شخص مصاب بالمرض؟",
      "answer":
          "يبدو أن خطر التقاط كوفيد-19 من براز الشخص المصاب ضعيف. بينما تشير التحقيقات الأولية إلى أن الفيروس قد يكون موجودًا في البراز في بعض الحالات ، فإن الانتشار عبر هذا الطريق ليس سمة رئيسية لتفشي المرض. تقوم منظمة الصحة العالمية بتقييم الأبحاث الجارية حول طرق انتشار كوفيد-19 وستواصل مشاركة النتائج الجديدة. ولأن هذا يمثل خطورة ، فهو سبب آخر لتنظيف اليدين بانتظام بعد استخدام الحمام وقبل تناول الطعام."
    },
    {
      "question": "ما مدى احتمالية أن أُصاب ب كوفيد-19؟",
      "answer":
          "تعتمد المخاطرة على مكانك - وبشكل أكثر تحديدًا ، ما إذا كان هناك تفشي كوفيد-19 يتكشف هناك. بالنسبة لمعظم الناس في معظم المواقع ، لا يزال خطر الإصابة بالمشاركة في كوفيد-19 منخفضًا. ومع ذلك ، هناك الآن أماكن حول العالم (مدن أو مناطق) ينتشر فيها المرض. بالنسبة للأشخاص الذين يعيشون في هذه المناطق أو يزورونها ، فإن خطر التقاط كوفيد-19 أعلى. تتخذ الحكومات والسلطات الصحية إجراءات صارمة في كل مرة يتم فيها التعرف على حالة جديدة من كوفيد-19. تأكد من الالتزام بأي قيود محلية على السفر أو التنقل أو التجمعات الكبيرة. التعاون مع جهود مكافحة الأمراض سيقلل من خطر اصطياد أو انتشار كوفيد-19. يمكن احتواء تفشي كوفيد-19 وإيقاف انتقال العدوى ، كما هو موضح في الصين وبعض البلدان الأخرى. لسوء الحظ ، يمكن أن تظهر حالات تفشي جديدة بسرعة. من المهم أن تكون على دراية بالموقف الذي تتواجد فيه أو تنوي الذهاب إليه. تنشر منظمة الصحة العالمية تحديثات يومية حول الموقف كوفيد-19 في جميع أنحاء العالم."
    },
    {
      "question": "من هو المعرض لخطر الإصابة بمرض شديد؟",
      "answer":
          "بينما لا نزال نتعرف على كيفية تأثير كوفيد-19 على الأشخاص ، يبدو أن كبار السن والأشخاص الذين يعانون من حالات طبية موجودة مسبقًا (مثل ارتفاع ضغط الدم أو أمراض القلب أو أمراض الرئة أو السرطان أو السكري) يصابون بأمراض خطيرة أكثر من غيرهم."
    },
    {
      "question": "هل يجب أن أرتدي كمامة لحماية نفسي؟",
      "answer":
          "ارتدِ كمامة فقط إذا كنت مريضًا بأعراض كوفيد-19 (خاصة السعال) أو كنت تعتني بشخص قد يكون لديه كوفيد-19. يمكن استخدام قناع الوجه الذي يمكن التخلص منه مرة واحدة فقط. إذا لم تكن مريضًا أو تعتني بشخص مريض ، فأنت تهدر قناعًا. يوجد نقص في الأقنعة على مستوى العالم ، لذا تحث منظمة الصحة العالمية الناس على استخدام الأقنعة بحكمة. تنصح منظمة الصحة العالمية بالاستخدام الرشيد للأقنعة الطبية لتجنب الهدر غير الضروري للموارد الثمينة وإساءة استخدام الأقنعة. تتمثل أكثر الطرق فعالية لحماية نفسك والآخرين من كوفيد-19 في تنظيف اليدين بشكل متكرر وتغطية السعال بثني المرفق أو المنديل. وحافظ على مسافة لا تقل عن متر واحد (3 أقدام) من الأشخاص الذين يسعلون أو يعطسون"
    },
    {
      "question": "هل المضادات الحيوية فعالة في منع أو علاج كوفيد-19؟",
      "answer":
          "لا. لا تقضي المضادات الحيوية على الفيروسات ، بل تعمل فقط على الالتهابات البكتيرية. كوفيد-19 سببه فيروس لذا المضادات الحيوية لا تعمل. لا ينبغي استخدام المضادات الحيوية كوسيلة للوقاية أو العلاج من كوفيد-19. يجب استخدامها فقط حسب توجيهات الطبيب لعلاج عدوى بكتيرية."
    }
  ];
  static List masksAr = [
    {
      "title": "متي ترتدي الكمامة؟",
      "body":
          "ينبغي استخدام الكمامات في إطار استراتيجية شاملة من تدابير كبح انتقال العدوى وإنقاذ الأرواح. فلا يكفي استخدام الكمامات وحده لتوفير مستوى كافٍ من الحماية ضد عدوى كوفيد-19.وإذا كانت عدوى كوفيد-19 منتشرة في مجتمعك المحلي، فحافظ على سلامتك باتخاذ بعض الاحتياطات البسيطة، مثل التباعد البدني وارتداء الكمامة والحفاظ على التهوية الجيدة في الغرف وتلافي الحشود وتنظيف اليدين والعطس والسعال في ثنية المرفق أو في منديل ورقي. يرجى الاطلاع على النصائح الصادرة عن السلطات المحلية في المكان الذي تعيش وتعمل فيه. افعل كل ذلك!اجعل من ارتداء الكمامة عادة عندما تكون مع أشخاص آخرين. إنّ استعمال الكمامات وحفظها وتنظيفها والتخلص منها بشكل سليم أمر ضروري لجعلها فعالة قدر الإمكان.فيما يلي المعلومات الأساسية عن كيفية ارتداء الكمامة:نظّف يديك قبل أن ترتدي الكمامة، وقبل خلعها وبعده.تأكد من أنها تغطي أنفك وفمك وذقنك.عندما تخلع الكمامة، احفظها في كيس بلاستيكي نظيف، واحرص يومياً على غسلها إذا كانت كمامة قماشية أو التخلّص منها في صندوق النفايات إذا كانت كمامة طبية.لا تستعمل الكمامات المزودة بصمامات"
    }
  ];
  static List masksEn = [
    {
      "title": "Used masks",
      "body":
          "Masks should be used as part of a comprehensive strategy of measures to suppress transmission and save lives; the use of a mask alone is not sufficient to provide an adequate level of protection against COVID-19.If COVID-19 is spreading in your community, stay safe by taking some simple precautions, such as physical distancing, wearing a mask, keeping rooms well ventilated, avoiding crowds, cleaning your hands, and coughing into a bent elbow or tissue. Check local advice where you live and work. Do it all!Make wearing a mask a normal part of being around other people. The appropriate use, storage and cleaning or disposal of masks are essential to make them as effective as possible.Here are the basics of how to wear a mask:Clean your hands before you put your mask on, as well as before and after you take it off, and after you touch it at any time.Make sure it covers both your nose, mouth and chin.When you take off a mask, store it in a clean plastic bag, and every day either wash it if it\’s a fabric mask, or dispose of a medical mask in a trash bin.Don\’t use masks with valves."
    }
  ];
  static List advicesAr = [
    {
      "advice":
          "الحقيقة: الفيتامينات والمكملات المعدنية لا يمكنها أن تعالج كوفيد-19",
      "body":
          "تعد المغذيات الدقيقة مثل فيتامين دال وفيتامين جيم والزنك ضرورية لضمان الأداء الجيد للجهاز المناعي، وتلعب دوراً حيوياً في تعزيز الصحة والعافية التغذوية. ولا توجد حالياً أي إرشادات بشأن استخدام مكملات المغذيات الدقيقة كعلاج لكوفيد-19."
    },
    {
      "advice":
          "الحقيقة: تظهر الدراسات أن عقار هيدروكسي كلوروكوين ليس له أي فوائد سريرية في علاج كوفيد-19",
      "body":
          "لقد خضع هيدروكسي كلوروكين أو كلوروكين، وهما علاجان للملاريا وداء الذئبة الحمامية والتهاب المفاصل الريثاني، للدراسة كعلاج محتمل لكوفيد-19. وتظهر البيانات الحالية أن هذا الدواء لا يحد من الوفيات بين مرضى كوفيد-19 الذين أُدخلوا المستشفى، ولا يساعد الأشخاص المصابين بشكل معتدل من أشكال المرض.* ومن المقبول أن استعمال هيدروكسي كلوروكين وكلوروكين لدى مرضى الملاريا والأمراض المناعية الذاتية مأمون عموماً، غير أن استعماله في الحالات التي لم يوصَ باستعماله وبدون إشراف طبي قد يسبب آثارًا جانبية خطيرة وبالتالي فينبغي تجنبه.* لابد من إجراء بحوث أكثر حسماً لتقييم مدى نفعه لدى المرضى المصابين بشكل خفيف من أشكال المرض أو كعلاج وقائي قبل التعرض للفيروس أو بعده لدى الأشخاص المعرضين لكوفيد-19."
    },
    {
      "advice": "هل الديكساميثازون علاج لجميع مرضى كوفيد-19؟",
      "body":
          "ينبغي أن يُخصص الديكساميثازون للمرضى الذين هم في أمسّ الحاجة إليه. ولا ينبغي تخزينه. ولم يحقق هذا الدواء أي تحسّن في الحالة الصحية للمرضى الذين تظهر عليهم أعراض خفيفة. والديكساميثازون هو ستيروئيد قشري يُستعمل لآثاره المضادة للالتهاب والكابتة للمناعة. وقد أدى إعطاء جرعة يومية من الديكساميثازون بمقدار 6 ملغ لمدة 10 أيام لبعض مرضى كوفيد-19 الخاضعين لجهاز التنفّس الاصطناعي إلى تحسّن في حالتهم الصحية."
    },
    {
      "advice": "هل يمكن ارتداء الكمامة أثناء ممارسة الرياضة؟",
      "body":
          "ينبغي عدم ارتداء الكمامة أثناء ممارسة الرياضة لأن ‏الكمامة قد تحدّ من القدرة على التنفس بصورة مريحة.‏ وقد تبتل الكمامة بسبب العرق مما يصعب التنفس ويعزز ‏نمو المكروبات.‏ وأهم تدبير وقائي أثناء ممارسة الرياضة هو التباعد ‏الجسدي مسافة متر واحد على الأقل من الآخرين."
    },
    {
      "advice": "الحقيقة: الماء أو السباحة لا ينقلان فيروس كوفيد-19",
      "body":
          "لا ينتقل فيروس كوفيد-19 عن طريق الماء أثناء السباحة. ومع ذلك، ينتشر الفيروس بين الأشخاص عندما يخالط أحدهم شخصاً مصاباً بالعدوى مخالطة وثيقة. ما يمكنك القيام به: تجنّب الحشود وحافظ على مسافة لا تقل عن متر واحد من الآخرين، حتى عندما تسبح أو عند تواجدك في مناطق السباحة. ارتدِ كمامة أثناء تواجدك خارج الماء وعندما يتعذّر عليك الحفاظ على مسافة من الأشخاص الآخرين. نظّف يديك بشكل متكرر، وغطِّ فمك أو أنفك بمنديل ورقي أو بمرفقك المثني عند السعال أو العطس، وابق في المنزل إذا كنت تشعر بتوعك."
    },
    {
      "advice": "هل يمكن أن ينتشر فيروس كوفيد-19 بواسطة الأحذية؟",
      "body":
          "إن احتمالية انتقال عدوى كوفيد-19 بواسطة الأحذية إلى الأفراد ضعيفة جداً. وكإجراء احترازي، خصوصاً في المنازل التي يوجد فيها رضّع وأطفال صغار يحبون أو يلعبون على الأرض، فكّر في خلع الأحذية وتركها عند مدخل المنزل. سيساعد ذلك في منع إدخال أي قذارة أو مخلفات قد تكون ملتصقة بالنعل والأحذية إلى المنزل."
    },
    {
      "advice": "مرض فيروس كورونا (كوفيد-19) يسببه فيروس وليس بكتيريا",
      "body":
          "الفيروس الذي يسبب مرض كوفيد-19 ينحدر من سلالة فيروسات تُسمى الكورونا أو الفيروسات التاجية. والمضادات الحيوية لا تأثير لها على الفيروسات. غير أن بعض الأشخاص الذين يصابون بكوفيد-19 قد تحصل لديهم مضاعفات فيصابون بالتهاب رئوي. وفي هذه الحالة، قد يوصي مقدم الرعاية الصحية بتناول مضاد حيوي لمعالجة الالتهاب. ولا يوجد حالياً أي دواء مرخص لمعالجة كوفيد-19. إذا ظهرت عليك أعراض المرض، فاتصل بطبيبك المعالج أو بالخط الساخن المخصص لكوفيد-19 لطلب المساعدة."
    },
    {
      "advice":
          "استخدام الكمامات الطبية* لفترة طويلة لا يسبّب التسمم بثاني أكسيد الكربون أو نقص الأكسجين، إذا تمّ ارتداؤها على النحو السليم",
      "body":
          "قد لا يكون استخدام الكمامات الطبية فترة طويلة مريحاً، ولكنه لا يؤدي إلى التسمم بثاني أكسيد الكربون أو نقص الأكسجين. عندما ترتدي كمامة طبية، تأكد من تثبيتها بالشكل الصحيح وبإحكام جيد لتتنفس بشكل طبيعي. لا تعيد استخدام كمامة وحيدة الاستعمال واستبدل الكمامة دائماً حالما تصبح رطبة. *الكمامات الطبية (تُعرف أيضاً باسم الكمامات الجراحية) مسطحة أو مطوية وتُثبت بأربطة حول الرأس أو بأشرطة مرنة حول الأذنين."
    },
    {
      "advice": "معظم الأشخاص الذين يصابون بكوفيد-19 يتعافون منه",
      "body":
          "معظم الأشخاص الذين يصابون بكوفيد-19 تظهر ‏عليهم أعراض خفيفة أو معتدلة ويمكنهم التعافي منه ‏بفضل الرعاية الداعمة. إذا كنت تعاني من السعال ‏والحمى وصعوبة التنفس فالتمس الرعاية الطبية مبكراً – ‏اتصل بمرفق الرعاية بالهاتف أولاً قبل التوجه إليه. وإذا ‏كنت مصاباً بالحمى وتعيش في منطقة موبوءة بالملاريا ‏أو الحمى الصفراء، فالتمس الرعاية الطبية على الفور."
    },
    {
      "advice":
          "حقيقة: تعاطي الكحول لا يحميك من الإصابة بكوفيد-19 وقد يضرّ بصحتك",
      "body":
          "كثرة تناول المشروبات الكحولية أو الإفراط في تناولها قد يزيد مخاطر إصابتك بمتاعب صحية."
    },
    {
      "advice": "الماسحات الضوئية الحرارية لا يمكنها اكتشاف فيروس كوفيد-19",
      "body":
          "الماسحات الحرارية فعالة في اكتشاف الأشخاص الذين يعانون من الحمى (أي ترتفع درجة حرارة جسمهم عن المعدل الطبيعي)، ولكن لا يمكنها اكتشاف الأشخاص المصابين بفيروس كوفيد-19. للحمى أسباب عديدة. اتصل بمقدم الرعاية الصحية الخاص بك إذا كنت بحاجة إلى مساعدة، أو اطلب الرعاية الطبية فوراً إذا كنت مصاباً بالحمى وتعيش في منطقة تتفشى فيها الملاريا أو حمى الضنك."
    },
    {
      "advice":
          "إضافة الفلفل إلى حسائك أو إلى أطعمة أخرى لا يقي من الإصابة بمرض كوفيد-19 ولا يعالجه",
      "body":
          "إضافة الشطة إلى طعامك قد يجعله لذيذاً، لكنه لا يقي من ‏مرض كوفيد-19 ولا يعالجه. أفضل طريقة لحماية نفسك من ‏فيروس كورونا الجديد هي الابتعاد عن الآخرين مسافة متر واحد ‏على الأقل، والحرص على غسل اليدين جيداً وبشكل منتظم. ‏ومن المفيد لصحتك العامة أيضا الحفاظ على نظام غذائي ‏متوازن، وشرب كمية كافية من الماء، وممارسة الرياضة بانتظام، ‏ونيل قسط كافٍ من النوم.‏"
    },
    {
      "advice": "كوفيد-19 لا ينتقل عن طريق الذباب المنزلي",
      "body":
          "لا يوجد حتى الآن دليل أو معلومات تشير إلى أن فيروس كوفيد-19 ينتقل عن طريق الذباب المنزلي. ينتشر الفيروس الذي يسبب مرض كوفيد-19 بشكل رئيسي عن طريق القطرات التي تنبعث من الشخص المصاب عندما يسعل أو يعطس أو يتحدث. كما يمكن أن تصاب بالعدوى إذا لمست سطحاً ملوثاً ثم لمست عينيك أو أنفك أو فمك قبل غسل يديك. لحماية نفسك، احرص على الحفاظ على مسافة لا تقل عن متر واحد عن الآخرين، وتعقيم الأسطح التي يكثر لمسها. نظِّف يديك جيداً ومراراً وتجنب لمس عينيك وفمك وأنفك."
    },
    {
      "advice":
          "إن رش أو إدخال مبيض أو أي معقم آخر إلى جسمك لن يحميك من مرض كوفيد-19 وقد ينطوي على خطورة كبيرة",
      "body":
          "لا تقم تحت أي ظرف من الظروف برش أو إدخال مبيض أو أي معقم آخر إلى جسمك. هذه المواد قد تكون سامة إذا تم ابتلاعها وقد تسبب تهيجاً وتلفاً للبشرة والعينين. يجب استخدام المبيض والمعقم بحذر لتعقيم الأسطح فقط. وتذكّر أن تبقي الكلور (المبيض) والمطهرات الأخرى بعيدا عن متناول الأطفال."
    },
    {
      "advice":
          "شرب الميثانول أو الإيثانول أو المبيض لا يقي من الإصابة بمرض كوفيد-19 ولا يعالجه ويمكن أن يكون في غاية الخطورة",
      "body":
          "الميثانول والإيثانول والمبيض مواد سامة وشربها قد يؤدي إلى الإعاقة والوفاة. تستخدم مواد الميثانول والإيثانول والمبيض في بعض الأحيان في منتجات التنظيف لقتل الفيروس على الأسطح – ولكن يجب الامتناع عن تناولها بأي حال من الأحوال. هذه المواد لن تقتل الفيروس في جسمك وستلحق ضرراً بالغاً بأعضائك الداخلية. لحماية نفسك من كوفيد-19، احرص على تطهير الأشياء والأسطح، وخاصة التي تلمسها بانتظام. يمكنك استخدام مبيض مخفف أو الكحول لهذا الغرض. تأكد من تنظيف يديك جيداً وبشكل متكرر وتجنب لمس عينيك وفمك وأنفك."
    },
    {
      "advice": "شبكات الجيل الخامس اللاسلكية (‏‎5G‎‏) لا تنشر عدوى ‏كوفيد-19‏",
      "body":
          "ليس بمقدور الفيروسات التنقل عبر الموجات اللاسلكية أو ‏شبكات الهاتف المحمول. ويتفشى مرض كوفيد-19 في العديد ‏من البلدان التي ليست لديها شبكات الجيل الخامس أصلاً. ‏ مرض كوفيد-19 ينتشر عن طريق القطيرات التي يفرزها الجهاز ‏التنفسي عندما يسعل الشخص المصاب بالعدوى أو يعطس أو ‏يتكلم. وتنتقل العدوى إلى الأشخاص إذا لمسوا سطحاً ملوثاً ثم ‏لمسوا بعد ذلك عينيهم أو فمهم أو أنفهم.‏"
    },
    {
      "advice":
          "حقيقة: التعرّض للشمس أو لدرجات حرارة أعلى من 25 درجة مئوية لا يقيك من الإصابة بمرض فيروس كورورنا (كوفيد-19)",
      "body":
          "يمكن الإصابة بمرض كوفيد-19 أياً كانت حرارة الطقس أو الشمس. فالبلدان الحارة الطقس تبلغ أيضا عن حالات عدوى بكوفيد-19. لحماية نفسك من العدوى، احرص على غسل يديك بشكل متكرر وصحيح وتفادى لمس عينيك وفمك وأنفك."
    },
    {
      "advice":
          "حقيقة: يمكن أن تتعافى من المرض الذي يسببه فيروس كورونا (كوفيد-19). فالإصابة بفيروس كورونا الجديد لا تعني أنك ستظل حاملاً للفيروس إلى الأبد.",
      "body":
          "معظم الأشخاص الذي يصابون بمرض كوفيد-19 يتعافون منه تماما وتتخلص أجسامهم من الفيروس. إذا أصبت بالمرض، تأكد من معالجة الأعراض. إذا كنت تعاني السعال والحمى وصعوبة في التنفس، فالتمس العناية الطبية مبكراً، ولكن اتصل بمرفق الرعاية الصحية هاتفياً أولاً. معظم المرضى يتعافون بواسطة الرعاية الداعمة."
    },
    {
      "advice":
          "حقيقة: قدرتك على حبس نفَسك 10 ثوان أو أكثر دون أن تسعل أو تشعر بالضيق لا يعني أنك غير مصاب بمرض فيروس كورونا (كوفيد-19) أو أي مرض تنفسي آخر.",
      "body":
          "تتمثل الأعراض الأكثر شيوعاً لمرض كوفيد-19 في السعال الجاف والتعب والحمى. وقد يُصاب بعض الأشخاص بمضاعفات أكثر وخامة كالالتهاب الرئوي. والطريقة الأفضل للتأكد مما إذا كنت مصاباً أم لا بعدوى الفيروس المسبب لمرض كوفيد-19 هي الفحص المختبري، وليس عن طريق تمرين حبس النَفس الذي قد يشكل خطورة على صحتك."
    },
    {
      "advice":
          "يمكن أن ينتقل فيروس مرض كوفيد-19 في المناطق التي يكون المناخ فيها حارا ‏ورطبا",
      "body":
          "من خلال البيّنات المتوافرة لحد الآن، يمكن انتقال فيروس مرض كوفيد-19 في ‏جميع المناطق، بما فيها المناطق ذات الطقس الحار والرطب. وكيفما كان ‏المناخ، اتخذ التدابير الوقائية إذا كنت تعيش في منطقة أُبلغ فيها عن حالات ‏عدوى بكوفيد-19 أو تنوي السفر إليها. ولعل أفضل طريقة لحماية نفسك من ‏الإصابة بمرض كوفيد-19 هي المواظبة على غسل يديك. فبواسطة ذلك، يمكنك ‏التخلص من الفيروسات التي قد تكون عالقة بيديك وتتجنب بالتالي العدوى ‏المحتمل حدوثها إذا لمست عينيك أو فمك أو أنفك.‏"
    },
    {
      "advice":
          "حقيقة: البرد والثلج لا يمكن أن يقتلا فيروس كورونا المستجد (2019-nCov)",
      "body":
          "تتراوح درجة حرارة جسم الإنسان العادية بين 36.5 و37 درجة مئوية، بغض النظر عن درجة الحرارة أو الطقس الخارجيين. وبناء على ذلك، ليس هناك ما يدعو إلى الاعتقاد بأن البرد يمكن أن يقتل فيروس كورونا المستجد أو غيره من الأمراض. إن تنظيف يديك بشكل متكرر باستخدام مطهّر كحولي لليدين أو غسلهما بالماء والصابون هي أكثر الطرق فعالية لحماية نفسك من الفيروس."
    },
    {
      "advice": "الاستحمام بالماء الساخن لا يقي من مرض فيروس كورونا المستجد",
      "body":
          "إن الاستحمام بالماء الساخن لن يقيك من الإصابة بمرض كوفيد-19. فدرجة الحرارة السوية لجسمك تظل تتراوح بين 36.5 و37 درجة مئوية مهما كانت درجة حرارة الحمام أو الدوش. وفي الواقع، فإن الاستحمام بالماء الساخن للغاية قد يكون ضارًا لك لأنه قد يؤدي إلى إصابتك بحروق. ويعد تنظيف اليدين بشكل متكرر أفضل طريقة لحماية نفسك من مرض كوفيد-19، لأن ذلك يمكّنك من التخلص من الفيروسات التي قد تكون على يديك وبالتالي تجنّب الإصابة بالعدوى نتيجة لمس عينيك وفمك وأنفك."
    },
    {
      "advice":
          "حقيقة: فيروس كورونا المستجد (2019-nCov) لا يمكن أن ينتقل عن طريق لدغات البعوض.",
      "body":
          "فيروس كورونا المستجد هو فيروس من فيروسات الجهاز التنفسي ينتقل أساسا نتيجة مخالطة شخص مصاب، وبالتحديد عن طريق قطيرات الجهاز التنفسي التي يفرزها أثناء السعال أو العطس مثلا، أو عن طريق قطيرات اللعاب أو إفرازات الأنف. ولا تتوفر حتى الآن أي معلومات أو بيّنات توحي بأن فيروس كورونا المستجد يمكن أن ينتقل عن طريق البعوض. ولحماية نفسك من الفيروس، تجنّب المخالطة الوثيقة مع أي شخص مصاب بالحمى والسعال، والتزم بقواعد نظافة اليدين والمسالك التنفسية."
    },
    {
      "advice":
          "هل مجففات الأيدي (المتوافرة في المراحيض العامة مثلا) فعالة في القضاء على فيروس كورونا المستجد خلال 30 ثانية؟",
      "body":
          "كلا، مجففات الأيدي ليس فعالة في القضاء على فيروس كورونا المستجد. لحماية نفسك من الفيروس الجديد يجب المداومة على تنظيف اليدين بفركهما بواسطة مطهر كحولي أو غسلهما بالمادء والصابون. وبعد تنظيف اليدين يجب تجفيفهما تماماً بمحارم ورقية أو بمجففات الهواء الساخن."
    },
    {
      "advice":
          "لا ينبغي استخدام مصابيح الأشعة فوق البنفسجية لتعقيم اليدين أو أي أجزاء أخرى من البشرة",
      "body":
          "يمكن أن تسبب الأشعة فوق البنفسجية تهيجاً للبشرة وتلفاً للعينين. تنظيف اليدين بفركهما بمطهر كحولي أو غسلهما بالماء والصابون هو أكثر الطرق فعالية لإزالة الفيروس."
    },
    {
      "advice":
          "هل تعمل اللقاحات المضادة للالتهاب الرئوي على الوقاية من فيروس كورونا المستجد؟",
      "body":
          "لا. لا توفر اللقاحات المضادة للالتهاب الرئوي، مثل لقاح المكورات الرئوية ولقاح المستدمية النزلية من النمط ، الوقاية من فيروس كورونا المستجد. هذا الفيروس جديد تمامًا ومختلف، ويحتاج إلى لقاح خاص به. ويعمل الباحثون على تطوير لقاح مضاد لفيروس كورونا المستجد-2019، وتدعم منظمة الصحة العالمية هذه الجهود. ورغم أن هذه اللقاحات غير فعَّالة ضد فيروس كورونا المستجد-2019، يُوصى بشدة بالحصول على التطعيم ضد الأمراض التنفسية لحماية صحتكم."
    },
    {
      "advice":
          "هل يساعد غسل الأنف بانتظام بمحلول ملحي في الوقاية من العدوى بفيروس كورونا المستجد؟",
      "body":
          "لا. لا توجد أي بيّنة على أن غسل الأنف بانتظام بمحلول ملحي يقي من العدوى بفيروس كورونا المستجد. ولكن توجد بيّنات محدودة على أن غسل الأنف بانتظام بمحلول ملحي يساعد في الشفاء من الزكام بسرعة أكبر. ومع ذلك، لم يثبت أن غسل الأنف بانتظام يقي من الأمراض التنفسية. "
    },
    {
      "advice":
          "هل يساعد تناول الثوم في الوقاية من العدوى بفيروس كورونا المستجد؟",
      "body":
          "يعد الثوم طعامًا صحيًا، ويتميز باحتوائه على بعض الخصائص المضادة للميكروبات. ومع ذلك، لا توجد أي بيّنة من الفاشية الحالية تثبت أن تناول الثوم يقي من العدوى بفيروس كورونا المستجد."
    },
    {
      "advice":
          "مَنْ الأكثر عُرضة للإصابة بفيروس كورونا المستجد، كبار السن أم صغار السن؟",
      "body":
          "يمكن أن يُصاب الأشخاص من جميع الأعمار بفيروس كورونا المستجد-2019. ويبدو أن كبار السن والأشخاص المصابين بحالات مرضية سابقة الوجود (مثل الرَبْو، وداء السُكَّريّ، وأمراض القلب) هم الأكثر عُرضة للإصابة بمرض وخيم في حال العدوى بالفيروس. وتنصح منظمة الصحة العالمية الأشخاص من جميع الأعمار باتباع الخطوات اللازمة لحماية أنفسهم من الفيروس، مثل غسل اليدين جيدًا والنظافة التنفسية الجيدة."
    },
    {
      "advice":
          "هل المضادات الحيوية فعَّالة في الوقاية من فيروس كورونا المستجد وعلاجه؟",
      "body":
          "لا، لا تقضي المضادات الحيوية على الفيروسات، بل تقضي على الجراثيم فقط. يعد فيروس كورونا المستجد-2019 من الفيروسات، لذلك يجب عدم استخدام المضادات الحيوية في الوقاية منه أو علاجه. ومع ذلك، إذا تم إدخالك إلى المستشفى بسبب فيروس كورونا المستجد-2019، فقد تحصل على المضادات الحيوية لاحتمالية إصابتك بعدوى جرثومية مصاحبة."
    },
  ];
  static List advicesEn = [
    {
      "advice": "FACT: Vitamin and mineral supplements cannot cure COVID-19",
      "body":
          "Micronutrients, such as vitamins D and C and zinc, are critical for a well-functioning immune system and play a vital role in promoting health and nutritional well-being.  There is currently no guidance on the use of micronutrient supplements as a treatment of COVID-19. WHO is coordinating efforts to develop and evaluate medicines to treat COVID-19."
    },
    {
      "advice":
          "FACT: Studies show hydroxychloroquine does not have clinical benefits in treating COVID-19",
      "body":
          "Hydroxychloroquine or chloroquine, a treatment for malaria, lupus erythematosus, and rheumatoid arthritis, has been under study as a possible treatment for COVID-19. Current data shows that this drug does not reduce deaths among hospitalised COVID-19 patients, nor help people with moderate disease.* The use of hydoxychloroquine and chloroquine is accepted as generally safe for patients with malaria and autoimmune diseases, but its use where not indicated and without medical supervision can cause serious side effects and should be avoided. * More decisive research is needed to assess its value in patients with mild disease or as pre- or post-exposure prophylaxis in patients exposed to COVID-19."
    },
    {
      "advice": "Is dexamethasone a treatment for all COVID-19 patients?",
      "body":
          "Dexamethasone should be reserved for patients who need it most. It should not be stockpiled. It provided no improvement for patients with mild symptoms. Dexamethasone is a corticosteroid used for its anti-inflammatory and immunosuppressive effects. For some COVID-19 patients on ventilators, a daily 6 mg dose of dexamethasone for 10 days improved their health"
    },
    {
      "advice": "FACT: People should NOT wear masks while exercising",
      "body":
          "People should NOT wear masks when exercising, as masks may reduce the ability to breathe comfortably. Sweat can make the mask become wet more quickly which makes it difficult to breathe and promotes the growth of microorganisms. The important preventive measure during exercise is to maintain physical distance of at least one meter from others."
    },
    {
      "advice": "Fact: Water or swimming does not transmit the COVID-19 virus",
      "body":
          "The COVID-19 virus does not transmit through water while swimming. However, the virus spreads between people when someone has close contact with an infected person. WHAT YOU CAN DO: Avoid crowds and maintain at least a 1-metre distance from others, even when you are swimming or at swimming areas. Wear a mask when you’re not in the water and you can’t stay distant. Clean your hands frequently, cover a cough or sneeze with a tissue or bent elbow, and stay home if you’re unwell."
    },
    {
      "advice": "FACT: The likelihood of shoes spreading COVID-19 is very low",
      "body":
          "The likelihood of COVID-19 being spread on shoes and infecting individuals is very low. As a precautionary measure, particularly in homes where infants and small children crawl or play on floors, consider leaving your shoes at the entrance of your home. This will help prevent contact with dirt or any waste  that could be carried on the soles of shoes."
    },
    {
      "advice":
          "FACT: The coronavirus disease (COVID-19) is caused by a virus, NOT by bacteria",
      "body":
          "The virus that causes COVID-19 is in a family of viruses called Coronaviridae. Antibiotics do not work against viruses. Some people who become ill with COVID-19 can also develop a bacterial infection as a complication. In this case, antibiotics may be recommended by a health care provider. There is currently no licensed medication to cure COVID-19. If you have symptoms, call your health care provider or COVID-19 hotline for assistance."
    },
    {
      "advice":
          "FACT: The prolonged use of medical masks* when properly worn, DOES NOT cause CO2 intoxication nor oxygen deficiency",
      "body":
          "The prolonged use of medical masks can be uncomfortable. However, it does not lead to CO2 intoxication nor oxygen deficiency. While wearing a medical mask, make sure it fits properly and that it is tight enough to allow you to breathe normally. Do not re-use a disposable mask and always change it as soon as it gets damp. * Medical masks (also known as surgical masks) are flat or pleated; they are affixed to the head with straps or have ear loops."
    },
    {
      "advice": "FACT: Most people who get COVID-19 recover from it",
      "body":
          "Most people who get COVID-19 have mild or moderate symptoms and can recover thanks to supportive care. If you have a cough, fever and difficulty breathing seek medical care early - call your health facility by telephone first. If you have fever and live in an area with malaria or dengue seek medical care immediately."
    },
    {
      "advice":
          "FACT: Drinking alcohol does not protect you against COVID-19 and can be dangerous",
      "body":
          "The harmful use of alcohol increases your risk of health problems."
    },
    {
      "advice": "FACT: Thermal scanners CANNOT detect COVID-19",
      "body":
          "Thermal scanners are effective in detecting people who have a fever (i.e. have a higher than normal body temperature). They cannot detect people who are infected with COVID-19. There are many causes of fever. Call your healthcare provider if you need assistance or seek immediate medical care if you have fever and live in an area with malaria or dengue."
    },
    {
      "advice":
          "FACT: Adding pepper to your soup or other meals DOES NOT prevent or cure COVID-19",
      "body":
          "Hot peppers in your food, though very tasty, cannot prevent or cure COVID-19. The best way to protect yourself against the new coronavirus is to keep at least 1 metre away from others and to wash your hands frequently and thoroughly. It is also beneficial for your general health to maintain a balanced diet, stay well hydrated, exercise regularly and sleep well."
    },
    {
      "advice": "FACT: COVID-19 is NOT transmitted through houseflies",
      "body":
          "To date, there is no evidence or information to suggest that the COVID-19 virus transmitted through houseflies. The virus that cause COVID-19 spreads primarily through droplets generated when an infected person coughs, sneezes or speaks. You can also become infected by touching a contaminated surface and then touching your eyes, nose or mouth before washing your hands. To protect yourself, keep at least 1-metre distance from others and disinfect frequently-touched surfaces. Clean your hands thoroughly and often and avoid touching your eyes, mouth and nose."
    },
    {
      "advice":
          "FACT: Spraying and introducing bleach or another disinfectant into your body WILL NOT protect you against COVID-19 and can be dangerous",
      "body":
          "Do not under any circumstance spray or introduce bleach or any other disinfectant into your body. These substances can be poisonous if ingested and cause irritation and damage to your skin and eyes. Bleach and disinfectant should be used carefully to disinfect surfaces only. Remember to keep chlorine (bleach) and other disinfectants out of reach of children."
    },
    {
      "advice":
          "FACT: Drinking methanol, ethanol or bleach DOES NOT prevent or cure COVID-19 and can be extremely dangerous",
      "body":
          "Methanol, ethanol, and bleach are poisons. Drinking them can lead to disability and death. Methanol, ethanol, and bleach are sometimes used in cleaning products to kill the virus on surfaces – however you should never drink them. They will not kill the virus in your body and they will harm your internal organs. To protect yourself against COVID-19, disinfect objects and surfaces, especially the ones you touch regularly. You can use diluted bleach or alcohol for that. Make sure you clean your hands frequently and thoroughly and avoid touching your eyes, mouth and nose."
    },
    {
      "advice": "FACT: 5G mobile networks DO NOT spread COVID-19",
      "body":
          "Viruses cannot travel on radio waves/mobile networks. COVID-19 is spreading in many countries that do not have 5G mobile networks. COVID-19 is spread through respiratory droplets when an infected person coughs, sneezes or speaks. People can also be infected by touching a contaminated surface and then their eyes, mouth or nose. "
    },
    {
      "advice":
          "FACT: Exposing yourself to the sun or temperatures higher than 25°C DOES NOT protect you from COVID-19",
      "body":
          "You can catch COVID-19, no matter how sunny or hot the weather is. Countries with hot weather have reported cases of COVID-19. To protect yourself, make sure you clean your hands frequently and thoroughly and avoid touching your eyes, mouth, and nose.  "
    },
    {
      "advice":
          "FACT: Catching COVID-19 DOES NOT mean you will have it for life",
      "body":
          "Most of the people who catch COVID-19 can recover and eliminate the virus from their bodies. If you catch the disease, make sure you treat your symptoms. If you have cough, fever, and difficulty breathing, seek medical care early – but call your health facility by telephone first. Most patients recover thanks to supportive care."
    },
    {
      "advice":
          "FACT: Being able to hold your breath for 10 seconds or more without coughing or feeling discomfort DOES NOT mean you are free from COVID-19",
      "body":
          "The most common symptoms of COVID-19 are dry cough, tiredness and fever. Some people may develop more severe forms of the disease, such as pneumonia. The best way to confirm if you have  the virus producing COVID-19 disease is with a laboratory test.  You cannot confirm it with this breathing exercise, which can even be dangerous"
    },
    {
      "advice": "FACT: The COVID-19 virus can spread in hot and humid climates",
      "body":
          "The best way to protect yourself against COVID-19 is by maintaining physical distance of at least 1 metre from others and frequently cleaning your hands. By doing this you eliminate viruses that may be on your hands and avoid infection that could occur by then touching your eyes, mouth, and nose."
    },
    {
      "advice": "FACT: Cold weather and snow CANNOT kill the COVID-19 virus",
      "body":
          "There is no reason to believe that cold weather can kill the new coronavirus or other diseases. The normal human body temperature remains around 36.5°C to 37°C, regardless of the external temperature or weather. The most effective way to protect yourself against the new coronavirus is by frequently cleaning your hands with alcohol-based hand rub or washing them with soap and water."
    },
    {
      "advice": "FACT: Taking a hot bath does not prevent COVID-19",
      "body":
          "Taking a hot bath will not prevent you from catching COVID-19. Your normal body temperature remains around 36.5°C to 37°C, regardless of the temperature of your bath or shower. Actually, taking a hot bath with extremely hot water can be harmful, as it can burn you. The best way to protect yourself against COVID-19 is by frequently cleaning your hands. By doing this you eliminate viruses that may be on your hands and avoid infection that could occur by then touching your eyes, mouth, and nose."
    },
    {
      "advice": "The COVID-19 virus CANNOT be spread through mosquito bites",
      "body":
          "To date there has been no information nor evidence to suggest that the new coronavirus could be transmitted by mosquitoes. The new coronavirus is a respiratory virus which spreads primarily through droplets generated when an infected person coughs or sneezes, or through droplets of saliva or discharge from the nose. To protect yourself, clean your hands frequently with an alcohol-based hand rub or wash them with soap and water. Also, avoid close contact with anyone who is coughing and sneezing"
    },
    {
      "advice":
          "FACT: Hand dryers are NOT effective in killing the COVID-19 virus",
      "body":
          "Hand dryers are not effective in killing the COVID-19 virus. To protect yourself, frequently clean your hands with an alcohol-based hand rub or wash them with soap and water. Once your hands are cleaned, you should dry them thoroughly by using paper towels or a warm air dryer."
    },
    {
      "advice":
          "FACT: Ultra-violet (UV) lamps should NOT be used to disinfect hands or other areas of your skin",
      "body":
          "UV radiation can cause skin irritation and damage your eyes. Cleaning your hands with alcohol-based hand rub or washing your hands with soap and water are the most effective ways to remove the virus."
    },
    {
      "advice":
          "FACT: Vaccines against pneumonia DO NOT protect against the COVID-19 virus",
      "body":
          "Vaccines against pneumonia, such as pneumococcal vaccine and Haemophilus influenza type B (Hib) vaccine, do not provide protection against the new coronavirus. The virus is so new and different that it needs its own vaccine. Researchers are trying to develop a vaccine against COVID-19, and WHO is supporting their efforts. Although these vaccines are not effective against COVID-19, vaccination against respiratory illnesses is highly recommended to protect your health."
    },
    {
      "advice": "FACT: Rinsing your nose with saline does NOT prevent COVID-19",
      "body":
          "There is no evidence that regularly rinsing the nose with saline has protected people from infection with the new coronavirus. There is some limited evidence that regularly rinsing the nose with saline can help people recover more quickly from the common cold. However, regularly rinsing the nose has not been shown to prevent respiratory infections."
    },
    {
      "advice": "FACT: Eating garlic does NOT prevent COVID-19",
      "body":
          "Garlic is a healthy food that may have some antimicrobial properties. However, there is no evidence from the current outbreak that eating garlic has protected people from the new coronavirus."
    },
    {
      "advice":
          "FACT: People of all ages can be infected by the COVID-19 virus",
      "body":
          "Older people and younger people can be infected by the COVID-19 virus. Older people, and people with pre-existing medical conditions such as asthma, diabetes, and heart disease appear to be more vulnerable to becoming severely ill with the virus. WHO advises people of all ages to take steps to protect themselves from the virus, for example by following good hand hygiene and good respiratory hygiene."
    },
    {
      "advice": "FACT: Antibiotics CANNOT prevent or treat COVID-19",
      "body":
          "Antibiotics work only against bacteria, not viruses. COVID-19 is caused by a virus, and therefore antibiotics should not be used for prevention or treatment. However, if you are hospitalized for COVID-19, you may receive antibiotics because bacterial co-infection is possible."
    },
    {
      "advice": "Science in 5: Antibiotics & COVID-19",
      "body":
          "Why are experts concerned about COVID-19 and antibiotics? And what can you do about it? Learn about antibiotics and COVID-19 from WHO’s Dr Hanan Balkhy in Science in 5"
    }
  ];
}
