#!/usr/bin/perl -w
use warnings;
use Test::More tests => 1;
require "shift_string.pl";

ok( Strings->lexical_min(
"MZBMWEYYDIADTLCOUEGMDBYFWURPWBPUVHIFNUAPWYNDMHTQVKGKBHTYTSZOTWFLEGSJZZSZFWTZFPNSCGUEMWRCZQXYCIVDQNKYPNXNNPMUDUHZNOAQUUDHAVRNCWFWUJPCMIGGJMCMKKBNJFEODXKGJGWXTRXINGIQQUHUWQHDSWXXRXUZZFHKPLWUNFAGPPCOILDAGKTGDARVEUSJUQFISTULGBGLWMFGZRNYXRYETWZHLNFEWCZMNOOZLQATUGMDJWGZCFABBKOXYJXKATJMPPRSWKDKOBDAGWDWXSUFEESRVNCBSZCEPIGPBZUZOOOTORZFSKCWBQORVWDRMKLFDCZATFARQDKELALXZXILLKFDVPFPXABQLNGDSCRENTZAMZTVVCVRTCMBQLIZIJDWTUYFRXOLSYSXLFEBPOLCMQSPPMRFKYUNYDTMWBEXSNGXHWVROANDFQJAMZKPTTSLILDLRKJOYRPXUGICEAHGIAKEVSJOADMKFNKSWRAWKJXWCMCCIABZBRSKZAZJQTLKIQYDPTPKCSDGCQJSHZNDPVANNRYWFRNRGHLJJQRXPXNLKCWDPDKSWVTXGANWWYOOSXTNEXEEZJXOUYFJHNWPQFXEXZXFOLPCFBLPNCETYHTRWXKBOSCCSKXBUVCROSAVNPXZOEOYYGHBBQKFLSUTPWMHQWKVIRMLFCPIDLQYIKZMNTTAIFCBOPNWEZESOMKXHAIAFMVKBJAISYRBTULTPNXBCJMORNQUMATSERHIEQGGRIVOUWFNBNGHDFALLCPRVNGIKCAMVPRZAEAPQMILWKBKGOGOCNIAAISORFQXZJZTVCGVZLCEDWNEZBWXMPOBMRVXASKWVVWQUUDRNWHMMZHEQXIWHFUXAVLWFTGYXXHPYGSPVWDNVMGNWNPKDRNZNZVRKMJJMWISYRDKODOAFWSJFUVMEEWPDWPIYMWBHOXEBJIBXPHIEFGTSAWCDIVTLTRSHJQNKKMDTJGSCNOZMOJNHIGIPPJEMZZZBCVOYPLXENFFMFDZDIOJUODGBULVIVHTBHAYEEEBIACTYAOVQBIVUDYDGXWSGMHLRACAAYIPSOJLEQHPYGSHCVXWWLNEBLFMNQGDDQPCJXZFTWRLGPTRKBKRLWGSNLCAUDZDUJBBQLFZIKGXOHVHTUVCJMMWVHKXCGYEKJKKLCJQONEPPYDPSPIWQBKPSUNEDQIXLSIFCOKFRCVRSZCVDYFWUHTZPTBBNXBHQJOMXRBHJQXVDASERFFCVKECQYLQPRAWYQUEVHVUZCVFMBEWPXICSKPMZSBSUSMADDQKWGFIRLZZBCZEGHMUHXNXEJRSPCVQEJWOWQSFHOVHCTWNHUUVEPRRIYFWSTSJDECYYFJBJSDLEGQLKLXIYRWVLPPOMDFDTVTKWOKIWWPEJXIBDKNPONPSXRYTOQGJRTJPATMDLHMQEGVJHVLEHSYKRLVVSSMAMBZUSXUSZYYBDRDVZDBEXSGLYOKVMYKIFWGFNCSACJLKATHFMNLCTSQEJFOXYVMTOTTLHRLYPBZISUCLLQGAAITMXPMFINSOWJAAWSNMLUIZVPJBEWQCIPCQWVSQFBEUTDCSDRVIOZOBDYTWSIMSEETQCKLNKXTAWOXIYSVZRAKQEISPNDDXTNFQALSWXSMKSFOOIWXYNAMDJXNSMKIEWKWDPZJPKIBCBBMZBIWPMJCZCEHTCZQJZLKGYVSZPUUVETDFLUUHXPEOPUXMDYLAYSTTENJMCEDCUMOEEICJTXKKVXCXJOWRCVLTTSQHWKBBMIGTQLOVJGVIYZGCQJVPVOTWUCSETIDICYHTCMAJPHXYYOOEOVUXVUPLOKLPBOVQDWDYPBXGAJUQWADGEEDJKGURHSXDVYLMYFJQLWZLDROUYLQOBSGEMWDOIBQVCYEDFVQOPFHKQMHUSXQACOOGJXCOXBFZLWCXFVQAAVFEGKCIRQQGDYHLJMAQZQIFUAOUBUKYPAVEBVDUJGSULAHKPRFPNZQAQGVFDXWTQFLCEILPMSZIZFWBONXPLCYQITTPKPBCFSESGFBIQNIPOLEFRELPHJTHQRZSPHBNUMGRIFMWIZTFUHQIBGAXDVYSYVGXLSPMINYKBYUMEPUBRXUOAVYOVDBIELZDOBGQCJZNJBEXALKGHYWIOXZBVXZFCSHCOZMEFWCRVYIBJDFQVQMHXDPCCJODLGVKPLRFDEDPZOPRFEECHWSZHVCDOOEJLCHCWCEKTFRDMOWHSUEAVBRAWMIHZSNFHRAFBQEAWDIXZNPPFWIEAIVTMPQZQTSVNVWJMGVHUESSSAXGMOYWDGVWIOUZUQDEBIJCQYCFTAFTUWTGXAVEMCIUQMXENPRPMYZREXSHNVTESSTWHYTMATXBUZXPSTPYGFXPHPFCKJDBFBXIMEESWYNDFHOMCNWJTFRUVZWBHLZBVEBYEUCEPGCDPMGHCIBFXGRVNACXWLOPXSVZCLWYMWDMOLJTAGUWUVHXIFDJQSHLQAUEGLQRBXUWPOZFVEGDPVNWMEDXBMXAGIMXMXGJLNNFKWBRQSHXFCANWPOFLQEJAFDKTNLPGVLEXCYGLRZBKHCMXVUOBYXCXZXQMLSWVLMBVCSDTEFCQTMLILWZTBSCFHJTCYTONMLIIVRKBBLVNMHIPRGERYRPJPJYKCHNEYFYMIEFYMAJRNWJSLYTBXMDUWTFZAFKXYFMCNLJSEBZLEYGEGUUJMKYYLFMMVVILJWGCYHRDLDKZFZGTVMOWLBEQTJSODVHBUUMEXPPCDXQHCEQLDFAVGQLVITUZZNGJEOTBKJZCRTGGLUIAMNCORBKIWDOZITQGQIPHVWUIJWHSMGOGXOMLUQURCWOGGHHJJCEKGGLLAMQGXHCFCMRAKGROJGXIZWXASCASINZXCDXEWCULOFITYLHXHZXMJDLISUPDYLSHAHCIPZOPTULLYISXSCZJQAWAGNNGCGGIWKHNARJISVCDPZGGTLLUDVCSJXEUBFGYJDIMTPFTGYTKFNTYLNFLBFUTSYOVXMLIGOAIQZLXWFRSLJUCDXSSAMGCIFDLJASHCJJWHLKQNIPXZJGLPTEDZXMTHVZGRUHHCKUFDECAKRRZOQFQCDUZHJSDASKQGLQLNNBKUUYTQTHFCJRAAWTBCCURPZPUMCSMQHEBHQRFIGAMBLZXYCVEVLUZCUQXVRJGEKYAOFVRVCOHLDAVKJIYKHCCMNJPDHKKIMPSMVCYQXLGWLBHLDKJLZWTHKFNIZEBVLGOZRNWWVXDCKGNCKQTKQIDHOOCIWRPKXESLDTGXTAURGLBGMPYQLPZBNSBZHANBIYPUZIQURWRBRBXMHBRDPDRERBOBAJULDLWRPKRTFBLSPNKXYITIOHLPGJLCKTLAQSALNOIPHBTUYRRGHSEZNKMZUKAIIHATZTTIYLACTADTNINWCSUFBYNJKXAAJNAGFEVSCFUHOAJUQMISGBBSXQBYLMRASZACPLIUGLQYUZBNIZXXJXNNTSCKJZJZJMMYFMVXJAOPVEFHWHBYOAPKQEDYDDTRPBLPORURSKNPBTAMZKKZRRDDCMRAYGLNJUIKQYNJAUCAQEKHCWXDQPDOHYCVAEXJYULGVWTOVQGSFIVKVUNQDEKHNGXJYYCSPVZULHKYWGQJGAQCLPSXNSERDNRJXROZMXTJTVOSSYQPVOTKHMBQAXIQXUXZLZTKSOHUJRTAIMPDESFQJBJIFGYBEBNUIICFJTEQFVSYRWWJZISSAIMGCUSLEIACQXJIPDTILJQRBLDLIRSIEWJPLNAIDVVIXJQTQJDOZLDBBEEMVMVEQLHJZTCOUOSTCGROMEKRINQBGVGLJHVEAONQKRTJJTLGBKRNYOIXIRSLFSZFQIVGKAFLGKCTVBVKSIPWOMQXLYQXHLBCEUHBJBFNHOFCGPGWDSEFFYCTHMLPCQEJGSKWJKBKBBMIFNURNWYHEVSOQZMTVZGFIQAJFRGYUZXNRTXECTCNLYOISBGLPDBJBSLXLPOYMRCXMDTQHCNLVTQDWFTUZGBDXSYSCWBRGUOSTBELNVTAQDMKMIHMOXQTQLXVLSSSISVQVVZOTOYQRYUYQWOKNNQCQGGYSRQPKRCCVYHXSJMHOQOYOCWCRIPLARJOYIQRMMPMUEQBSBLJDDWRUMAUCZFZIODPUDHEEXALBWPIYPMDJLMWTGDRZHPXNEOFHQZJDMURGVMRWDOTUWYKNLRBVUVTNHIOUVQITGYFGFIEONBAAPYHWPCRMEHXCPKIJZFIAYFVOXKPASYIWXMRAHUWLAOOVREJHPBIIQMDPTEFNNGFZTQHHIFMTHLXKQBHISDXBGOTYSPNVUSLDLFCNOGNDBCJXQDUSSOEGPWPRFUSSJQHKHBHPHTJKYWSEBAAVJAUPVDBXFITSYOJEVYCPXWYXFKZDESBNOACIXWTRHQHFIMUKKDINHWYXNJKMOPBHOPLFMPLQJYFIAZKXXDMZBNDUOAXJDAEVIBEQACBDXWRGSFVPLKHFPNLPFLZNDTLUWRIGJJTTHZHPOWRYLZZYVNATBAWWXBYDUUSBDHBGGAWQVLRBMPGKNZVLKEEAVEKLVQUTZZDRQONOWWVWJFXXLTXMXKKPZKYFZSVYVKVNYCVPNPQBRIBPEMMAYFPNIWAZHBJEZMENVESSYPPASIFGSSFWVEUXASVKMPXZVZOOPTVOZCYQPXANFTSVGLUXXMWTERTADXMAMTXRDQNPLOAGMMGETHVBNEXECQIDNZPSZHLHPSOEMJFRDPFAWNFHYQUWIWNUQZTLHKLUBMJMQIMOYUMBUPRIGZZXVKJJOXHYUSUKLAIYMPOPZYVEWMVQMSOISXZUHSQAZGGGNMRUXDKVGPUCMTZOSJLRPDWAEKOXTRAWMHIJIZUQRLNKIEYLAIIYMTDFTXJUUCJIPOZZHGBIZWMNCRCABVMQWAFVMUXYYBVCIURGYAPTMPVLCNYUHAYTABVKSPWISDSDSPXYSOPDEMQDGQAXUOOOMPKYSOKVZZHDPMVNURNAULFUTCUKWGTXNQXMUKBXNLIDVYSEWBWMSNSRFPXXFTMJUEDKSDMNBKLSRNJPWVPQWMXXTFFGTBDBJIFNRVWZTBDJRBAZXOTGFQVYQPGRDOJJGJVQIWLDVJINOEEBSCJCISYVUTVHVMIYCOYSZFEXXAFMKAXSXWKTFCFAILJABWUNYLERKSNHSAQNHOVLTHJVSUMBZQSJHRLLOVOYUBXMXBYUNVAADRVBEJOORBYHWUNRHNIXRHWODLXNGPQURFPIQDFTESWNRNYFNRLLTCTMJVSJXPFQSGPZEQQTREWWSCEICEANFVODTIOKDWTZOQOBOIIOXGOMODFASZWZGUZZYQITDDCINEMYPCBFELHMHYPBTBWMCHQHYGFTVAOFPXWMPMFBCFNCLQEXJGVZPQBXCQOSKJDXWHIMEUWXOPZAFASCSXAWAROBLPMAMKLRWLZNPLGSPUZVNUBPUDIBPTDSLAAGXAAACQRSFVHCLAEDSMLKJAQSOQGFPOVIGXFVHLTPWPTOJSARDOZOGRLTULBERIYWIREEBJDDKDHPYLEYPYLEVVGLKCKUBMYGXZQMEEYEHJEHKNBKPRSVDGJOIZZGJSZEBTAQQGZWYFGDCBKDGXZURJPOAHRHDPQEXZSRPGVDUTABOGKWKUEHFZWHVAMSNTZUVCRQZPLXHYKIAOAPJZKZNMLSNEZSSKDLOSIYFAWAZNBUWENOVCSFKFUHNTGLVESXSRRNZKBHZKHZMVKJEVSRBDICLCKMSGPGNGYCKZVGYSVWCGWAYJOKQACTFXTIVFBDWPRUFIVTGGZHBPVLXFKISDNEOGDSEENJLEWROBJHPPPJCZYXEAIQANAZTKSNPFWYHDJVIPGWZZNMNNXWRAIIEICSCDHRYZVRHTOPRRATXUFCITHOKIOGUDGGZPVJCTBAHNZDWTOKIATSRIQZWEDRRFZBRKGVYNBBFOMOIAWWMMJIQVHDLNSVWNWBKTEHYKEVHACVDFLMNKRLJMIJVFXDVDYDMVKJSBPMCGMNFTSEUMHBDIOHZCJVPAYXQWDPYCHQCTUDLKEDTBJDUQBZWXVOXJLAJSTAOQNRRRPXCNDMWHLWDYGNNORDXMUJNZLKEAMDXANOKVBVPLRWXZIJPJKULODEULUEPKSLYIUZYWPYYFOCICAZYEWQYULJLFMTHLIEOLXUYPKQPEMFJJPSWULKNGYTFFIXVOIYUUSYBDMYGPUGZHUERHLFELEMNNAVEFSUQIKNYEDQTXYEKPWPDPCUUIMOSYTASPBMINXPVBCBQOLOSVBRPPGPYVIXLSXHQDRPHMJPIHERRWHDWOSAPJFTERGJSZLZWCIHWCUEGFCPSAQJNNFFMVVEUPTMNEFBHOHJBCAOCDWJYAYLNVZECIUCLQUQEDNWKYFYMGRFMZXQPEJCIXXPPQGVUAWUTGRMEZJKTEOFJBNRVZZKVJTACFXJJOKISAVSGRSLRYXFQGRMDSQWPTAJBQZVETHULJBDATXGHFZQRW",
"FGAKWMOAWLZQJYPMHLLBBUUHBPRIQSNIBYWLGJLXOWYZAGRFNQAFVCQWKTKCJWEJEVZBNXHSFMWOJSHCDYPNVBUHHUZQMGOVMVGWIIZATOXGBLYUDIPAHFBKEWMUNEOQHJMBPDTWNZNBLWVTJRNIWLBYBLHPPNDSPOJROUFFAZPOXTQDFPJUHITVIJROHAVPQATOFXWMKSVJCVHDECXWWMOSQICZJPKFAFQLBOXOSNJGZGDRAEHZDLTTHEMEUSXHIIIMRDRUGABNXWSYGSKTKCSLHJEBFEXUCSYVLWRPTEBKJHEFSVFRMCQQDLANBETRGZWYLIZMRYSTVPGRKHLICFADCOGTNIGDRXASLQUOLBTOMEFRTOCGSYYXMMSOESSJMKVHSKPLOEETLFVCJLILCEMZWTVJILGDVBVAFAEQQOJYPXJDYXDZXBTKCCESYMPAXXHZCAQJDOIXJIIVINPIDPFJHVAVBWPCKQNCJWYGBBDWBQJVDEHKEVSNTANOWLERSAPPRUOKYWNEGNCMJVJXCSALRMIUSZJMKAPBWDVDNJXNXRNLMIRLMEHSAYUHJPAJKUXSYRIRKPMGZCYUPOIGWSDQSUXMAIXWSQGVLRJZFCQRPHSBGRSFNEAIJELHYRUMKQPKQKLSACNHPZNPXZSFGMCOUBKPCWZMKMAXJYPVSWRIGSVQGOGOQCIVAZSINDEHAOZDDWXTTFFSHOVPVPOLDLONLKEGGVXCYQKABPWNRZEJFDOPDHXKOQSPEVRRJEOCHBDFQBVCOYVFFVZAUUFRROHJTXNJZPMKDKJBFQFLIVIGIWZTGBYBUGIFDYHOJTJKOAQIEHKJMATGYHGKJUMWVALSQMCOIIJVWCHNENIKRLIZWKHKTDXTQVXIBCTBNBXFUDIVICNLJLNZPGHKVJCOSVFNRYIPIIYLOTXANMKCLJVYYCMRTSCNDZIVGHXAIGWXSKRKSQJOKVNCECTSFXPGYORKUFSAACIQGNCVXTGHWTPBNFSKRMPZCYMXUGWJDILCORKRZPUEWAHXYLCGNZKSUSRAUPTYMACGTSTKDXWYGKDRGGMQKOMLRWRROQFNZPVWOCUAGGXCVBFLAUQXQBWTFYHPEYFDPYDBFANCNKGTYOMYHDODVBIQNEQFWSVYFRPIJYGJDUHWAGGCWZIDPHKRWYJCQGZPSRLCJUYBMGAORPPYFFUNUONATQSEYSOUBMIAFJBZXUIWSZUOVQEWCOLEJFLIVCKBBWDJGMZVFKXZXFDCXBAYMMNTIELKJNZKODDCPFEPDQHGYRAWGYMAMLJWNBIEAWIUFAEPOCJMCSOYNMIUPLAEKAXEXIYJFHHGXEQPXSVIEVROOOPKWNVXQAZPXLDLYEQWDUIQURNWSMXXARZOAMPOQOXCMQGAMIHMSRJNRLNIJTNZXCDYCZMYFRUWSFKVXVLJUPORLHZEQQZRLYDQLXTGJMXDSTCRABJCOPYBQYBAALILYZHYSADROQIJFHYVGZUFDLRZGECMEQTGKFGIFPYIEHMCGRPOPMOZMAECXFPKWZEUALGFDMDEXMKSIPYMEGERUXGTGANELJAMWVTXFQFCEHNCNHXAYVDRKWPPXISCAYKVMKYJKJJGZIDBATJUJGDCSOQNLXGXXDEYEWHVTNCVPUSJINBRRJCWFXCAFBXPYTBEYPCOSWMPDCBDCMJSFZYOOHDZYUDJOUKIOWFCMHPLICCYHIIGRNJMXYAFNXNFZVNBNSXBKAMPSWFMOOFLQWWDNSAJUZISGRZOZDGNHHUAIBGYCTPYQHCXCHHYGIHQAERMSPSGOMQKYLTMRFGQBDHILOYXFITYHEWGMVCAKCXUNUXOGDVURUMQOGWLJLFHYSYJVVEFPKBYIBZEQFJHZYMHDKDZUEQDHNYVQTUNONRXJNFBRUKWLFITFMOVPQNROHZNPYFCOZUGJYBLUVNIQUKMSWCWSRIWFQNHOTBAYAEQVYPHRKWUTQICJOWQMQNEITNCVUAZZNJOJVLTIJKFXGMUUXQAYPFTSRHSIFDBPPEVHQEDZPWOMZRSDEJWFSUUXEWAUMEYNNLQRKNKOTNCFKNVZSGBKEECUVNQPEFKGBIDLRSKWXIOCWGRAIDGDLEDUTXCLALKBNJNWMGSBOTNPGRVZQRGJKWPKADHCSCCXYCUKRESWGWZYJORWCBOKBMKPFTUCREJBRLPNQHMCCQJNYVEGKVPEATDZWCWABGKZEKKDYFGUBJDFDJNILUMMWXGVHHCFGRZINRODTIDTVLUOBAWQMXEAMUMKSCVLHMIVFUBJCMBLWKOXSKIRGQGNILLTZTIEAIPFRRSHTQLHXXIBAQMQHMBKAIMRKZVGEWNJPEVFQGYWZPPBIEIGZKKMPPLSYWCOFXBLCYJVESUHOVQVUYGOLNPQFPYRWYIUBIWQJDJHVJNTTZFNJIMRYVPYHOFLQTFRRTLDUJWPINXMJMCMWZMDLUUBVWSPACMHCWANDVPQYIQTOZIPDDJLATRPRDNYGMBAYNLFZMBMTRYTSQSXSUEJLGOOQEYUCQVJFSMHXMHXBCBDQSKZNXNNPHSOQJFMAQKLCMCKFGIESZPIRGOTZGVLHINLOGMTFNRQNXOBYLZDDFYFPYTCDEZITDUQHOZQXQXXTXGPZKKBXMKUHDOMJNRFTOJTRFYUPNVUOJDBUYCZOAHWVUUVVZAPUNXUYPBQQXRYAHDFHFRJSXYUKJFMRUWPJAJJCVJBKXPTGQCYXDCVAAJMDHKBAAXQVZIGYBWNIUFUCUCBZTNISVHQSZVKTILNAGLUPTRWDGTCDZJJXCNWESQXFFBXYUQMQVYDZSRUHXEVQYMJURMJNILNRKEEPDSYYSVBAEKSOZXFNZXEWJRVCBOXLJNXJDXGFHTGRDXOHNJTIYNSPKWGTNXSXJRIJYTXLCASQPDLJZLNXVPSBJQEKRUNUEHMHNGYUMGJHBOEOBQNLIFESKIVABBAEPUTXUURWPOWHFUSACEJXOMOSQBOMLEUGDHZLVTZVJKZPFZYCZIVPIOARKAXAWRPXYZOSGLXXLPWNWNLZFJDLDRFFUDMYWWPJTLKXMOIRWVOLEKXPMYHDYJAEQWKNFPAPUEGIRCDOWKUSEYBNBRCWSCMLUGZFKOVXYSYPZEKEEDCEMNKIHRYLIZMAKZWCDHQDXFKRVSQFHCLIUBNUWCJKDGPOYNPPAGPZHMMOVFURADZEMPDWJFVVTGMSALSWWBVJAHWERCTOEZQYYZOSXHIJGKZKSPPPVVLJVEDHURQYXRLHTEZGPHNBPUHGKMRCLIVKHNZTOXSEJNOEPWPAJUQRWZXNOWQXQPJBXZSYBTYAFRQTLECKZUXDLWOUWIJCGHHGNSOWIJQPHEMOJMZAIEORVNBNSWIUUYYTMUTIVRDUPCGUVSGNGMQWWSKXGLDLVDRMMAQHCZCTLDSRYAYGNNDFGJGNUALNZRULIRVGRHHPSOZMSTVDJCSMAACHWIGJSCNAPSUMXPZLLLVJJFOAMEMXUUTILACVKECCFEZYWBFTNBWYJTYBGRJTQCKYTLHDZZUWQKCGESMFUCYQPJLQXSJRJSNFUWBDCDQSAJDIMLRCVTJCXOETTGXXJJBCNWUNUUYERUOTKWXKXCTOVEUNECFRCWVYTIYTUIWSVWQWPIJISKVOQGYEYORJHDSKBCATYUPYQPBXPVTLTUDZMIVFLMFCERJOPFQFWTJCYAZCGRMFDLVLBAXDNNBXTAOSQRGJERNPPFRMAXZJQCPQMQHMSIRUQEUXXVEVDTKBGHFVPNIPVGLDDRRZQWOHCPYAKJCXKBOPXMXJKIAWLYIBCDHBXEUNRSVHWSVEYYWAWNFPJKPBCPSSADRKYQVSJRQBYEBEBCBAAEJCJNOYVYRCJUNQYAGAZPGLNZYRZWMOUNBIIVRLFALQDKMIVHIXJQODZCMCGUQQYXTNOUARYQCMAEIDIQVRDUELOHDQBAGTNMIWEUGTLGUGDBGXRIKEWSVURSYBMOTAOOCREFBNBLEVNTPELPJKUOYHWQJJRIVBQWZVUZWOUBMQBOMBBGQBFXHWHIYBFKVURXXGKONDDFORJOJTUTTNSDRLICJRQSSAAPOWJZUIFXQMSVXQJNNOXIJPWCMHGCBIGWDADEARLEAYZOCHOCEGGMOPMXQSZWGEVPGJISNXEPRDYQQDFFIOAGLKBVXVMQOBEAXNFVERARXQLPTSVRNETGHETGLSKMDXUVOOCGPXLDYKTWUJXBBUVLNFBDCFCXDVGXVBVLXCQKCODATAEUHVSKLCGCWHSJWWGAZCZVZNYZRVHXETFZZAWPKYIGZATNXIAVEVWFJUONOQDSKGSNDFXRPDSNGZOFADTEIZSBIBRRVUBFANKRBKPXNJXQPIJMKSNJRTYFLTREYENPGSAITRJDLEYPOTIMVWOXNVOJZXBBNTNUMOMGZLIJHAFVZRODTNWETXETDNXQQRNNNGQITRTFQTUVMHUDFEUQPWCTKVQAUTEAZSJUCFGPLKPGEZVDHWVUZKBHBIDBTNSHGWPFSLNWJGPBPTAQYLIBHZFYWZUSZPACXUKBZWOPDRKTPYWOIRJWFEKXONWBYKSTQUKZAJLUJJULEQORUFTAFGNKISKXKTSASSJRRWPOCEGOWQKSBSZLSVSYGALCPESNTLDJGRAKLQZNGIQYNIFOWBGCTQVAZPKUULWUZYIMDLSGKONXBYYTNTZKXFTIJJRWCRSEKWATROTURZPNOSLDLWPBOGGNJCWTFOPDHQGLLWXRYDXERNSFECYJIXGWVETICATGAIJQIZLKGVHLHWSGLHEGZIYUOEQDOKCGBQFVBRNHHSBEPDYKKYYGEUTUIFLJAZBCNXISFCODIQOJDENGXJQFLODZVNEENRGLAVZYNYHSXRGDIQPNUSNCPYDZJQKTYELPGMSBKLVMNLPGXCIENKRBJUWCMLLBKPRLUFJLJOKYNPPXBKYISXMMANLXUYEIDFZVEFWWCDKRPIIUTRWMINFZXGETXTTSIGFKGOFEKPIUWYZFLPKLBIMTOFJPXQKDQYAOIWLWMJAKZVHICDMYHCXGERYPPFGVHEPIMGRQOLQYIBJPHSJKMDKAQBKYWTBQEHRMYBEVNQUTDLYQPOGEMUUDZXBHJLBGVDNZUNUBUEPBCSJBPCYDEHBRGJPPIQEBGXHDTQXWIZICHYTSCEWAOUDJZEVUODGDGQFDZVRBOXOPVFDBOYSKOLRVDFOIRKQPIWOWGYPYBCHBMWTBEAOLSRXQCOXWNTBYIMAJFPAUYMWJWIBOTKZIUTTJQCNHUDHYLQBXRBXKVMUDTHUTQQENFNCSHTAQSWMQUCJVUZCETVNQQJSSEBSLRICSVMWQAKEZGIRYRHLXPEUGVSBIPCSMYMHULYKRIYHDMASFCJUIGRWJCHMJSLMPYNEWNZPPHMUDZCBXZDEXJUHKTDTCOIBZVEVSMWAXAKRTDFOIVKVOOOYPYEMIIDADQUQEPXWQKESDNAKXKBZRCJKGVWWXTQXVFPXCWITLJYEHLDGSJYTMEKIMKKNDJVNZQTJYKIYMKMDZPWAKXDTKZCQCATLEVPPGFHYYKGMIPUODJRNFJZHCMJDBZVHYWPRBWDCFXIFFPZBJBMBYIJKQNOSSLQBFVVICXVOEUZRURAETGLTHGOURZHFPNUBZVBLFZMMBGEPJJYSHCHTHULXARZHIZEIOEPWBIZHZKBDLUYTBVWVQIPIZQCWCAJKUFNQHMCRMMXZBLJPLVPXJGEXDFZLLNNBUGBMCTHSPXENWOVYWDFCHIDWCSTLBOCFZZYOCNMGAAUJTRLQSNIFLVEHWYIPPBXHVUIFUJIFKWLTVJBKGQPOOPTXEMXKRXOIHBOKYPCIZINRXTBRAXNMHKCSSHGUUATPPFHDHNWPZUKJYBKKVRMMPUEEHKJYRCRKPKHTBFQPYVRCFQALHOIKWFSQFSTYFPRAAHXHJXVSSCNGGGKGNHWHEPGUYAVZCFDKQBCMGROIDXRZYYNHWCDIUSRIQSAOWCZWUUYELCXEPXLWDCKNMDXAUTBDNRAHITQISZNXNISYOORKEPOPRZKLKGKHESPPLQSSAIMTLLTGAFHVLCCIZTDIDXPWHDGHOSCIGPPTAURARUEIHXOOOTZELVQBHVOQIOZHSTFXPWBFMGLKICKRGWOLHOAKATSSJLITQZJFHDFZLMDADKYPRFJSITGVQAIOFZWNKPRYCKXSJOZUINKHUFNWHJCYANIRDGWLFWUJGZCFGRLNKVYFOPQZTSUQSHDTKDGBRRKXWQPGLIPCAASJHKLYPYUURVGZBFAGBNQJWKSDMGDPFKDGQYGSEMVFITDEILCYDJNHUPZVEASVKJXGAMXNTQFZNQKMSOAREINWJEIKYORROZGFZHOYHMKUPVGURWSLCQSZRMOAORLUILDOYUBSXOYQZHCBRGIFOQRGXBYCQOOQDZMLTUWIQGFULDUPXAVNNJTRELAQIKMVGRPYSHCSTAHTZDBRVCHPTOADVZUAIKCSZEGAROQJNJHMJCUMBXGSZKTQFRUOSTVEVHHHECIOMZZKFFNHMLKYETBKVNVDOIMAKKOLLYUNRCNQUDGAZMEJGOAHKJAFILHXVQYSSVATIGCJZXIBTIRITDILDTFGGBYZOBBMXTWDAJAWQDYWNPPFLKKMTXZJVXOPQVLIWDWHZEPCUIWELHBUOTLKVESEXNWKYTONFRPQCXZZQZDVSMBSJCXXEUGAVEKOZFJLOLRTQGWZQXSFGRNVRGFRQPIXHSSKBPZGHNDESVWPTPVVKASFALZSETOPERVPWZMKGPCEXQNVTNOULPRWNOWMSORSCECVVVRJFWUMCJQYROUNQSGDRUXTTVTMRKIVTXAUHOSOKDIAHSYRFTZSGVGYVEQWKZHQSTBGYWRVMSGFCFYUXPPHVMYYDZPOHGDICOXBTJNSBYHOIDNKRIALOWVLVMJPXCFEYGQZPHMBCJKUPOJSMMUQLYDIXBALUWEZVNFASJFXILBYLLWYIPSMOVDZOSUWOTCXERZCFUVXPRTZISESHJFCOSALYQGLPOTXVXAANPOCYPSIYAZSEJJOXIMNBVQUCFTUVDKSAXUTVJEUNODBIPSUMLAYMJNZLJUREFJGUTAQNROMYMIKEFRFROXCSXRKXPICTXGVLERNYTEFLNCIJHMLISLUNMAOSOMKSNMTTOFLZQLXDDZBFFTUMVXLTYDLONVAOCDEZWTPJOZMOWKQWCVFTEJHXUTNHJRGWSNBYTSGTIGOMKNGTMNAYTTZNCQDEWYZXWSOIESHPDAWCRZHBLLHLXLIXGIHZTEYFAXZICQWHABLKKHCLXHFOQBPCXWXPBVPAWLNFNATOFEKRBXSFGEJTCDQKZEUJUNFCUWEVYAJBJARUPRXSYKONESFURJQFGBXHTYMDQQICWECDLCSREWZIYNZUWNDNATNSWIGTQWMPLHTCQLCXSUNZWYACZGWVUEMAZDGDRCFPXNLVDZVAUUZVTXAHLRXDBZZGORUGJVMXEUGMYCUBKTUMWGRRWQILYUBVJIBGHOGAZNUBGQSEYSWUNVEWTCRHNIKGEGLIYJICZSEKYMTQZTHXQCEHSEZBHKUFQGMGROGEWPMRXLQWNINOGKYZXNIRLEGLHRKAFLJAKMKUYDGLAMGUXUCRWSYCUUOIVHYWYICDQUZGHGCYSDXMFADGFYWRJJSQMYCSDXPRNURIZKJVVRHPMCMODFSEJOEETZKKJFTDDMYSVXJXCTTLZSRQKRCUHLIUMYXZXMPKVFHTGTUIRIPAQWZKCEBKTAEUIJBTANRFTVKPNRNXCMFUMOTRNENQIWSVGJOBTBKHKATMITBNXTNSKLVILZIXLGMUFFLRQGFTANEXECPTWYGAHZICXTTRJWIYKLIRGHYQMLWYJDAVEXJHVZHRLPKWFHSQZPRGIRCVVSHSDMQYCWHJZANIHPDSVMWVJQTSLQELNWXTOQFVIVIRNIAKTVZBMVEWGHUACGVBGSHVKWGVRKEDNGMADOCZXKUPWSSPBCHWLGFMUEYTURFHBHZDUAYMBAWLRFJDFHMMOCROUSWMPYXFPXWWYXYKJUVOCTGKZZIIUNYTVXHKJRFDSQNTSJUDLMXJLKWIAQEOJUEFCCNPJYIXMZSMHQQJOTEODIATBBSRVBBVLTH")
 eq
"FGAKMWMOAWLZBMWEYYDIADTLCOUEGMDBYFWURPWBPUVHIFNUAPWYNDMHTQVKGKBHTYTSZOTWFLEGSJZQJYPMHLLBBUUHBPRIQSNIBYWLGJLXOWYZAGRFNQAFVCQWKTKCJWEJEVZBNXHSFMWOJSHCDYPNVBUHHUZQMGOVMVGWIIZATOXGBLYUDIPAHFBKEWMUNEOQHJMBPDTWNZNBLWVTJRNIWLBYBLHPPNDSPOJROUFFAZPOXTQDFPJUHITVIJROHAVPQATOFXWMKSVJCVHDECXWWMOSQICZJPKFAFQLBOXOSNJGZGDRAEHZDLTTHEMEUSXHIIIMRDRUGABNXWSYGSKTKCSLHJEBFEXUCSYVLWRPTEBKJHEFSVFRMCQQDLANBETRGZWYLIZMRYSTVPGRKHLICFADCOGTNIGDRXASLQUOLBTOMEFRTOCGSYYXMMSOESSJMKVHSKPLOEETLFVCJLILCEMZWTVJILGDVBVAFAEQQOJYPXJDYXDZXBTKCCESYMPAXXHZCAQJDOIXJIIVINPIDPFJHVAVBWPCKQNCJWYGBBDWBQJVDEHKEVSNTANOWLERSAPPRUOKYWNEGNCMJVJXCSALRMIUSZJMKAPBWDVDNJXNXRNLMIRLMEHSAYUHJPAJKUXSYRIRKPMGZCYUPOIGWSDQSUXMAIXWSQGVLRJZFCQRPHSBGRSFNEAIJELHYRUMKQPKQKLSACNHPZNPXZSFGMCOUBKPCWZMKMAXJYPVSWRIGSVQGOGOQCIVAZSINDEHAOZDDWXTTFFSHOVPVPOLDLONLKEGGVXCYQKABPWNRZEJFDOPDHXKOQSPEVRRJEOCHBDFQBVCOYVFFVZAUUFRROHJTXNJZPMKDKJBFQFLIVIGIWZTGBYBUGIFDYHOJTJKOAQIEHKJMATGYHGKJUMWVALSQMCOIIJVWCHNENIKRLIZWKHKTDXTQVXIBCTBNBXFUDIVICNLJLNZPGHKVJCOSVFNRYIPIIYLOTXANMKCLJVYYCMRTSCNDZIVGHXAIGWXSKRKSQJOKVNCECTSFXPGYORKUFSAACIQGNCVXTGHWTPBNFSKRMPZCYMXUGWJDILCORKRZPUEWAHXYLCGNZKSUSRAUPTYMACGTSTKDXWYGKDRGGMQKOMLRWRROQFNZPVWOCUAGGXCVBFLAUQXQBWTFYHPEYFDPYDBFANCNKGTYOMYHDODVBIQNEQFWSVYFRPIJYGJDUHWAGGCWZIDPHKRWYJCQGZPSRLCJUYBMGAORPPYFFUNUONATQSEYSOUBMIAFJBZXUIWSZUOVQEWCOLEJFLIVCKBBWDJGMZVFKXZXFDCXBAYMMNTIELKJNZKODDCPFEPDQHGYRAWGYMAMLJWNBIEAWIUFAEPOCJMCSOYNMIUPLAEKAXEXIYJFHHGXEQPXSVIEVROOOPKWNVXQAZPXLDLYEQWDUIQURNWSMXXARZOAMPOQOXCMQGAMIHMSRJNRLNIJTNZXCDYCZMYFRUWSFKVXVLJUPORLHZEQQZRLYDQLXTGJMXDSTCRABJCOPYBQYBAALILYZHYSADROQIJFHYVGZUFDLRZGECMEQTGKFGIFPYIEHMCGRPOPMOZMAECXFPKWZEUALGFDMDEXMKSIPYMEGERUXGTGANELJAMWVTXFQFCEHNCNHXAYVDRKWPPXISCAYKVMKYJKJJGZIDBATJUJGDCSOQNLXGXXDEYEWHVTNCVPUSJINBRRJCWFXCAFBXPYTBEYPCOSWMPDCBDCMJSFZYOOHDZYUDJOUKIOWFCMHPLICCYHIIGRNJMXYAFNXNFZVNBNSXBKAMPSWFMOOFLQWWDNSAJUZISGRZOZDGNHHUAIBGYCTPYQHCXCHHYGIHQAERMSPSGOMQKYLTMRFGQBDHILOYXFITYHEWGMVCAKCXUNUXOGDVURUMQOGWLJLFHYSYJVVEFPKBYIBZEQFJHZYMHDKDZUEQDHNYVQTUNONRXJNFBRUKWLFITFMOVPQNROHZNPYFCOZUGJYBLUVNIQUKMSWCWSRIWFQNHOTBAYAEQVYPHRKWUTQICJOWQMQNEITNCVUAZZNJOJVLTIJKFXGMUUXQAYPFTSRHSIFDBPPEVHQEDZPWOMZRSDEJWFSUUXEWAUMEYNNLQRKNKOTNCFKNVZSGBKEECUVNQPEFKGBIDLRSKWXIOCWGRAIDGDLEDUTXCLALKBNJNWMGSBOTNPGRVZQRGJKWPKADHCSCCXYCUKRESWGWZYJORWCBOKBMKPFTUCREJBRLPNQHMCCQJNYVEGKVPEATDZWCWABGKZEKKDYFGUBJDFDJNILUMMWXGVHHCFGRZINRODTIDTVLUOBAWQMXEAMUMKSCVLHMIVFUBJCMBLWKOXSKIRGQGNILLTZTIEAIPFRRSHTQLHXXIBAQMQHMBKAIMRKZVGEWNJPEVFQGYWZPPBIEIGZKKMPPLSYWCOFXBLCYJVESUHOVQVUYGOLNPQFPYRWYIUBIWQJDJHVJNTTZFNJIMRYVPYHOFLQTFRRTLDUJWPINXMJMCMWZMDLUUBVWSPACMHCWANDVPQYIQTOZIPDDJLATRPRDNYGMBAYNLFZMBMTRYTSQSXSUEJLGOOQEYUCQVJFSMHXMHXBCBDQSKZNXNNPHSOQJFMAQKLCMCKFGIESZPIRGOTZGVLHINLOGMTFNRQNXOBYLZDDFYFPYTCDEZITDUQHOZQXQXXTXGPZKKBXMKUHDOMJNRFTOJTRFYUPNVUOJDBUYCZOAHWVUUVVZAPUNXUYPBQQXRYAHDFHFRJSXYUKJFMRUWPJAJJCVJBKXPTGQCYXDCVAAJMDHKBAAXQVZIGYBWNIUFUCUCBZTNISVHQSZVKTILNAGLUPTRWDGTCDZJJXCNWESQXFFBXYUQMQVYDZSRUHXEVQYMJURMJNILNRKEEPDSYYSVBAEKSOZXFNZXEWJRVCBOXLJNXJDXGFHTGRDXOHNJTIYNSPKWGTNXSXJRIJYTXLCASQPDLJZLNXVPSBJQEKRUNUEHMHNGYUMGJHBOEOBQNLIFESKIVABBAEPUTXUURWPOWHFUSACEJXOMOSQBOMLEUGDHZLVTZVJKZPFZYCZIVPIOARKAXAWRPXYZOSGLXXLPWNWNLZFJDLDRFFUDMYWWPJTLKXMOIRWVOLEKXPMYHDYJAEQWKNFPAPUEGIRCDOWKUSEYBNBRCWSCMLUGZFKOVXYSYPZEKEEDCEMNKIHRYLIZMAKZWCDHQDXFKRVSQFHCLIUBNUWCJKDGPOYNPPAGPZHMMOVFURADZEMPDWJFVVTGMSALSWWBVJAHWERCTOEZQYYZOSXHIJGKZKSPPPVVLJVEDHURQYXRLHTEZGPHNBPUHGKMRCLIVKHNZTOXSEJNOEPWPAJUQRWZXNOWQXQPJBXZSYBTYAFRQTLECKZUXDLWOUWIJCGHHGNSOWIJQPHEMOJMZAIEORVNBNSWIUUYYTMUTIVRDUPCGUVSGNGMQWWSKXGLDLVDRMMAQHCZCTLDSRYAYGNNDFGJGNUALNZRULIRVGRHHPSOZMSTVDJCSMAACHWIGJSCNAPSUMXPZLLLVJJFOAMEMXUUTILACVKECCFEZYWBFTNBWYJTYBGRJTQCKYTLHDZZSZFWTZFPNSCGUEMWRCZQXYCIVDQNKYPNXNNPMUDUHZNOAQUUDHAVRNCWFWUJPCMIGGJMCMKKBNJFEODXKGJGWXTRXINGIQQUHUWQHDSWXXRXUZZFHKPLWUNFAGPPCOILDAGKTGDARVEUSJUQFISTULGBGLWMFGZRNYXRYETWZHLNFEWCZMNOOZLQATUGMDJWGZCFABBKOXYJXKATJMPPRSWKDKOBDAGWDWXSUFEESRVNCBSZCEPIGPBZUZOOOTORZFSKCWBQORVWDRMKLFDCZATFARQDKELALXZXILLKFDVPFPXABQLNGDSCRENTZAMZTVVCVRTCMBQLIZIJDWTUYFRXOLSYSXLFEBPOLCMQSPPMRFKYUNYDTMWBEXSNGXHWVROANDFQJAMZKPTTSLILDLRKJOYRPXUGICEAHGIAKEVSJOADMKFNKSWRAWKJXWCMCCIABZBRSKZAZJQTLKIQYDPTPKCSDGCQJSHZNDPVANNRYWFRNRGHLJJQRXPXNLKCWDPDKSWVTXGANWWYOOSXTNEXEEZJXOUYFJHNWPQFXEXZXFOLPCFBLPNCETYHTRWXKBOSCCSKXBUVCROSAVNPXZOEOYYGHBBQKFLSUTPWMHQWKVIRMLFCPIDLQYIKZMNTTAIFCBOPNWEZESOMKXHAIAFMVKBJAISYRBTULTPNXBCJMORNQUMATSERHIEQGGRIVOUWFNBNGHDFALLCPRVNGIKCAMVPRZAEAPQMILWKBKGOGOCNIAAISORFQXZJZTVCGVZLCEDWNEZBWXMPOBMRVXASKWVVWQUUDRNWHMMZHEQXIWHFUXAVLWFTGYXXHPYGSPVWDNVMGNWNPKDRNZNZVRKMJJMWISYRDKODOAFWSJFUVMEEWPDWPIYMWBHOXEBJIBXPHIEFGTSAWCDIVTLTRSHJQNKKMDTJGSCNOZMOJNHIGIPPJEMZZUWQKCGESMFUCYQPJLQXSJRJSNFUWBDCDQSAJDIMLRCVTJCXOETTGXXJJBCNWUNUUYERUOTKWXKXCTOVEUNECFRCWVYTIYTUIWSVWQWPIJISKVOQGYEYORJHDSKBCATYUPYQPBXPVTLTUDZMIVFLMFCERJOPFQFWTJCYAZCGRMFDLVLBAXDNNBXTAOSQRGJERNPPFRMAXZJQCPQMQHMSIRUQEUXXVEVDTKBGHFVPNIPVGLDDRRZQWOHCPYAKJCXKBOPXMXJKIAWLYIBCDHBXEUNRSVHWSVEYYWAWNFPJKPBCPSSADRKYQVSJRQBYEBEBCBAAEJCJNOYVYRCJUNQYAGAZPGLNZYRZWMOUNBIIVRLFALQDKMIVHIXJQODZCMCGUQQYXTNOUARYQCMAEIDIQVRDUELOHDQBAGTNMIWEUGTLGUGDBGXRIKEWSVURSYBMOTAOOCREFBNBLEVNTPELPJKUOYHWQJJRIVBQWZVUZWOUBMQBOMBBGQBFXHWHIYBFKVURXXGKONDDFORJOJTUTTNSDRLICJRQSSAAPOWJZUIFXQMSVXQJNNOXIJPWCMHGCBIGWDADEARLEAYZOCHOCEGGMOPMXQSZWGEVPGJISNXEPRDYQQDFFIOAGLKBVXVMQOBEAXNFVERARXQLPTSVRNETGHETGLSKMDXUVOOCGPXLDYKTWUJXBBUVLNFBDCFCXDVGXVBVLXCQKCODATAEUHVSKLCGCWHSJWWGAZCZVZNYZRVHXETFZZAWPKYIGZATNXIAVEVWFJUONOQDSKGSNDFXRPDSNGZOFADTEIZSBIBRRVUBFANKRBKPXNJXQPIJMKSNJRTYFLTREYENPGSAITRJDLEYPOTIMVWOXNVOJZXBBNTNUMOMGZLIJHAFVZRODTNWETXETDNXQQRNNNGQITRTFQTUVMHUDFEUQPWCTKVQAUTEAZSJUCFGPLKPGEZVDHWVUZKBHBIDBTNSHGWPFSLNWJGPBPTAQYLIBHZFYWZUSZPACXUKBZWOPDRKTPYWOIRJWFEKXONWBYKSTQUKZAJLUJJULEQORUFTAFGNKISKXKTSASSJRRWPOCEGOWQKSBSZLSVSYGALCPESNTLDJGRAKLQZNGIQYNIFOWBGCTQVAZPKUULWUZYIMDLSGKONXBYYTNTZKXFTIJJRWCRSEKWATROTURZPNOSLDLWPBOGGNJCWTFOPDHQGLLWXRYDXERNSFECYJIXGWVETICATGAIJQIZLKGVHLHWSGLHEGZIYUOEQDOKCGBQFVBRNHHSBEPDYKKYYGEUTUIFLJAZBCNXISFCODIQOJDENGXJQFLODZVNEENRGLAVZYNYHSXRGDIQPNUSNCPYDZJQKTYELPGMSBKLVMNLPGXCIENKRBJUWCMLLBKPRLUFJLJOKYNPPXBKYISXMMANLXUYEIDFZVEFWWCDKRPIIUTRWMINFZXGETXTTSIGFKGOFEKPIUWYZFLPKLBIMTOFJPXQKDQYAOIWLWMJAKZVHICDMYHCXGERYPPFGVHEPIMGRQOLQYIBJPHSJKMDKAQBKYWTBQEHRMYBEVNQUTDLYQPOGEMUUDZXBHJLBGVDNZUNUBUEPBCSJBPCYDEHBRGJPPIQEBGXHDTQXWIZICHYTSCEWAOUDJZEVUODGDGQFDZVRBOXOPVFDBOYSKOLRVDFOIRKQPIWOWGYPYBCHBMWTBEAOLSRXQCOXWNTBYIMAJFPAUYMWJWIBOTKZIUTTJQCNHUDHYLQBXRBXKVMUDTHUTQQENFNCSHTAQSWMQUCJVUZCETVNQQJSSEBSLRICSVMWQAKEZGIRYRHLXPEUGVSBIPCSMYMHULYKRIYHDMASFCJUIGRWJCHMJSLMPYNEWNZPPHMUDZCBXZDEXJUHKTDTCOIBZVEVSMWAXAKRTDFOIVKVOOOYPYEMIIDADQUQEPXWQKESDNAKXKBZRCJKGVWWXTQXVFPXCWITLJYEHLDGSJYTMEKIMKKNDJVNZQTJYKIYMKMDZPWAKXDTKZCQCATLEVPPGFHYYKGMIPUODJRNFJZHCMJDBZVHYWPRBWDCFXIFFPZBJBMBYIJKQNOSSLQBFVVICXVOEUZRURAETGLTHGOURZHFPNUBZVBLFZMMBGEPJJYSHCHTHULXARZHIZEIOEPWBIZHZKBDLUYTBVWVQIPIZQCWCAJKUFNQHMCRMMXZBLJPLVPXJGEXDFZLLNNBUGBMCTHSPXENWOVYWDFCHIDWCSTLBOCFZZYOCNMGAAUJTRLQSNIFLVEHWYIPPBXHVUIFUJIFKWLTVJBKGQPOOPTXEMXKRXOIHBOKYPCIZINRXTBRAXNMHKCSSHGUUATPPFHDHNWPZUKJYBKKVRMMPUEEHKJYRCRKPKHTBFQPYVRCFQALHOIKWFSQFSTYFPRAAHXHJXVSSCNGGGKGNHWHEPGUYAVZCFDKQBCMGROIDXRZYYNHWCDIUSRIQSAOWCZWUUYELCXEPXLWDCKNMDXAUTBDNRAHITQISZNXNISYOORKEPOPRZKLKGKHESPPLQSSAIMTLLTGAFHVLCCIZTDIDXPWHDGHOSCIGPPTAURARUEIHXOOOTZELVQBHVOQIOZHSTFXPWBFMGLKICKRGWOLHOAKATSSJLITQZJFHDFZLMDADKYPRFJSITGVQAIOFZWNKPRYCKXSJOZUINKHUFNWHJCYANIRDGWLFWUJGZCFGRLNKVYFOPQZTSUQSHDTKDGBRRKXWQPGLIPCAASJHKLYPYUURVGZBFAGBNQJWKSDMGDPFKDGQYGSEMVFITDEILCYDJNHUPZVEASVKJXGAMXNTQFZNQKMSOAREINWJEIKYORROZGFZHOYHMKUPVGURWSLCQSZRMOAORLUILDOYUBSXOYQZHCBRGIFOQRGXBYCQOOQDZMLTUWIQGFULDUPXAVNNJTRELAQIKMVGRPYSHCSTAHTZDBRVCHPTOADVZUAIKCSZEGAROQJNJHMJCUMBXGSZKTQFRUOSTVEVHHHECIOMZZKFFNHMLKYETBKVNVDOIMAKKOLLYUNRCNQUDGAZMEJGOAHKJAFILHXVQYSSVATIGCJZXIBTIRITDILDTFGGBYZOBBMXTWDAJAWQDYWNPPFLKKMTXZJVXOPQVLIWDWHZEPCUIWELHBUOTLKVESEXNWKYTONFRPQCXZZQZDVSMBSJCXXEUGAVEKOZFJLOLRTQGWZQXSFGRNVRGFRQPIXHSSKBPZGHNDESVWPTPVVKASFALZSETOPERVPWZMKGPCEXQNVTNOULPRWNOWMSORSCECVVVRJFWUMCJQYROUNQSGDRUXTTVTMRKIVTXAUHOSOKDIAHSYRFTZSGVGYVEQWKZHQSTBGYWRVMSGFCFYUXPPHVMYYDZPOHGDICOXBTJNSBYHOIDNKRIALOWVLVMJPXCFEYGQZPHMBCJKUPOJSMMUQLYDIXBALUWEZVNFASJFXILBYLLWYIPSMOVDZOSUWOTCXERZCFUVXPRTZISESHJFCOSALYQGLPOTXVXAANPOCYPSIYAZSEJJOXIMNBVQUCFTUVDKSAXUTVJEUNODBIPSUMLAYMJNZLJUREFJGUTAQNROMYMIKEFRFROXCSXRKXPICTXGVLERNYTEFLNCIJHMLISLUNMAOSOMKSNMTTOFLZQLXDDZBFFTUMVXLTYDLONVAOCDEZWTPJOZMOWKQWCVFTEJHXUTNHJRGWSNBYTSGTIGOMKNGTMNAYTTZNCQDEWYZXWSOIESHPDAWCRZHBLLHLXLIXGIHZTEYFAXZICQWHABLKKHCLXHFOQBPCXWXPBVPAWLNFNATOFEKRBXSFGEJTCDQKZEUJUNFCUWEVYAJBJARUPRXSYKONESFURJQFGBXHTYMDQQICWECDLCSREWZIYNZUWNDNATNSWIGTQWMPLHTCQLCXSUNZWYACZGWVUEMAZDGDRCFPXNLVDZVAUUZVTXAHLRXDBZZGORUGJVMXEUGMYCUBKTUMWGRRWQILYUBVJIBGHOGAZNUBGQSEYSWUNVEWTCRHNIKGEGLIYJICZSEKYMTQZTHXQCEHSEZBHKUFQGMGROGEWPMRXLQWNINOGKYZXNIRLEGLHRKAFLJAKMKUYDGLAMGUXUCRWSYCUUOIVHYWYICDQUZGHGCYSDXMFADGFYWRJJSQMYCSDXPRNURIZKJVVRHPMCMODFSEJOEETZKKJFTDDMYSVXJXCTTLZSRQKRCUHLIUMYXZXMPKVFHTGTUIRIPAQWZKCEBKTAEUIJBTANRFTVKPNRNXCMFUMOTRNENQIWSVGJOBTBKHKATMITBNXTNSKLVILZIXLGMUFFLRQGFTANEXECPTWYGAHZICXTTRJWIYKLIRGHYQMLWYJDAVEXJHVZHRLPKWFHSQZPRGIRCVVSHSDMQYCWHJZANIHPDSVMWVJQTSLQELNWXTOQFVIVIRNIAKTVZBMVEWGHUACGVBGSHVKWGVRKEDNGMADOCZXKUPWSSPBCHWLGFMUEYTURFHBHZDUAYMBAWLRFJDFHMMOCROUSWMPYXFPXWWYXYKJUVOCTGKZZIIUNYTVXHKJRFDSQNTSJUDLMXJLKWIAQEOJUEFCCNPJYIXMZSMHQQJOTEODIATBBSRVBBVLTHZZZBCVOYPLXENFFMFDZDIOJUODGBULVIVHTBHAYEEEBIACTYAOVQBIVUDYDGXWSGMHLRACAAYIPSOJLEQHPYGSHCVXWWLNEBLFMNQGDDQPCJXZFTWRLGPTRKBKRLWGSNLCAUDZDUJBBQLFZIKGXOHVHTUVCJMMWVHKXCGYEKJKKLCJQONEPPYDPSPIWQBKPSUNEDQIXLSIFCOKFRCVRSZCVDYFWUHTZPTBBNXBHQJOMXRBHJQXVDASERFFCVKECQYLQPRAWYQUEVHVUZCVFMBEWPXICSKPMZSBSUSMADDQKWGFIRLZZBCZEGHMUHXNXEJRSPCVQEJWOWQSFHOVHCTWNHUUVEPRRIYFWSTSJDECYYFJBJSDLEGQLKLXIYRWVLPPOMDFDTVTKWOKIWWPEJXIBDKNPONPSXRYTOQGJRTJPATMDLHMQEGVJHVLEHSYKRLVVSSMAMBZUSXUSZYYBDRDVZDBEXSGLYOKVMYKIFWGFNCSACJLKATHFMNLCTSQEJFOXYVMTOTTLHRLYPBZISUCLLQGAAITMXPMFINSOWJAAWSNMLUIZVPJBEWQCIPCQWVSQFBEUTDCSDRVIOZOBDYTWSIMSEETQCKLNKXTAWOXIYSVZRAKQEISPNDDXTNFQALSWXSMKSFOOIWXYNAMDJXNSMKIEWKWDPZJPKIBCBBMZBIWPMJCZCEHTCZQJZLKGYVSZPUUVETDFLUUHXPEOPUXMDYLAYSTTENJMCEDCUMOEEICJTXKKVXCXJOWRCVLTTSQHWKBBMIGTQLOVJGVIYZGCQJVPVOTWUCSETIDICYHTCMAJPHXYYOOEOVUXVUPLOKLPBOVQDWDYPBXGAJUQWADGEEDJKGURHSXDVYLMYFJQLWZLDROUYLQOBSGEMWDOIBQVCYEDFVQOPFHKQMHUSXQACOOGJXCOXBFZLWCXFVQAAVFEGKCIRQQGDYHLJMAQZQIFUAOUBUKYPAVEBVDUJGSULAHKPRFPNZQAQGVFDXWTQFLCEILPMSZIZFWBONXPLCYQITTPKPBCFSESGFBIQNIPOLEFRELPHJTHQRZSPHBNUMGRIFMWIZTFUHQIBGAXDVYSYVGXLSPMINYKBYUMEPUBRXUOAVYOVDBIELZDOBGQCJZNJBEXALKGHYWIOXZBVXZFCSHCOZMEFWCRVYIBJDFQVQMHXDPCCJODLGVKPLRFDEDPZOPRFEECHWSZHVCDOOEJLCHCWCEKTFRDMOWHSUEAVBRAWMIHZSNFHRAFBQEAWDIXZNPPFWIEAIVTMPQZQTSVNVWJMGVHUESSSAXGMOYWDGVWIOUZUQDEBIJCQYCFTAFTUWTGXAVEMCIUQMXENPRPMYZREXSHNVTESSTWHYTMATXBUZXPSTPYGFXPHPFCKJDBFBXIMEESWYNDFHOMCNWJTFRUVZWBHLZBVEBYEUCEPGCDPMGHCIBFXGRVNACXWLOPXSVZCLWYMWDMOLJTAGUWUVHXIFDJQSHLQAUEGLQRBXUWPOZFVEGDPVNWMEDXBMXAGIMXMXGJLNNFKWBRQSHXFCANWPOFLQEJAFDKTNLPGVLEXCYGLRZBKHCMXVUOBYXCXZXQMLSWVLMBVCSDTEFCQTMLILWZTBSCFHJTCYTONMLIIVRKBBLVNMHIPRGERYRPJPJYKCHNEYFYMIEFYMAJRNWJSLYTBXMDUWTFZAFKXYFMCNLJSEBZLEYGEGUUJMKYYLFMMVVILJWGCYHRDLDKZFZGTVMOWLBEQTJSODVHBUUMEXPPCDXQHCEQLDFAVGQLVITUZZNGJEOTBKJZCRTGGLUIAMNCORBKIWDOZITQGQIPHVWUIJWHSMGOGXOMLUQURCWOGGHHJJCEKGGLLAMQGXHCFCMRAKGROJGXIZWXASCASINZXCDXEWCULOFITYLHXHZXMJDLISUPDYLSHAHCIPZOPTULLYISXSCZJQAWAGNNGCGGIWKHNARJISVCDPZGGTLLUDVCSJXEUBFGYJDIMTPFTGYTKFNTYLNFLBFUTSYOVXMLIGOAIQZLXWFRSLJUCDXSSAMGCIFDLJASHCJJWHLKQNIPXZJGLPTEDZXMTHVZGRUHHCKUFDECAKRRZOQFQCDUZHJSDASKQGLQLNNBKUUYTQTHFCJRAAWTBCCURPZPUMCSMQHEBHQRFIGAMBLZXYCVEVLUZCUQXVRJGEKYAOFVRVCOHLDAVKJIYKHCCMNJPDHKKIMPSMVCYQXLGWLBHLDKJLZWTHKFNIZEBVLGOZRNWWVXDCKGNCKQTKQIDHOOCIWRPKXESLDTGXTAURGLBGMPYQLPZBNSBZHANBIYPUZIQURWRBRBXMHBRDPDRERBOBAJULDLWRPKRTFBLSPNKXYITIOHLPGJLCKTLAQSALNOIPHBTUYRRGHSEZNKMZUKAIIHATZTTIYLACTADTNINWCSUFBYNJKXAAJNAGFEVSCFUHOAJUQMISGBBSXQBYLMRASZACPLIUGLQYUZBNIZXXJXNNTSCKJZJZJMMYFMVXJAOPVEFHWHBYOAPKQEDYDDTRPBLPORURSKNPBTAMZKKZRRDDCMRAYGLNJUIKQYNJAUCAQEKHCWXDQPDOHYCVAEXJYULGVWTOVQGSFIVKVUNQDEKHNGXJYYCSPVZULHKYWGQJGAQCLPSXNSERDNRJXROZMXTJTVOSSYQPVOTKHMBQAXIQXUXZLZTKSOHUJRTAIMPDESFQJBJIFGYBEBNUIICFJTEQFVSYRWWJZISSAIMGCUSLEIACQXJIPDTILJQRBLDLIRSIEWJPLNAIDVVIXJQTQJDOZLDBBEEMVMVEQLHJZTCOUOSTCGROMEKRINQBGVGLJHVEAONQKRTJJTLGBKRNYOIXIRSLFSZFQIVGKAFLGKCTVBVKSIPWOMQXLYQXHLBCEUHBJBFNHOFCGPGWDSEFFYCTHMLPCQEJGSKWJKBKBBMIFNURNWYHEVSOQZMTVZGFIQAJFRGYUZXNRTXECTCNLYOISBGLPDBJBSLXLPOYMRCXMDTQHCNLVTQDWFTUZGBDXSYSCWBRGUOSTBELNVTAQDMKMIHMOXQTQLXVLSSSISVQVVZOTOYQRYUYQWOKNNQCQGGYSRQPKRCCVYHXSJMHOQOYOCWCRIPLARJOYIQRMMPMUEQBSBLJDDWRUMAUCZFZIODPUDHEEXALBWPIYPMDJLMWTGDRZHPXNEOFHQZJDMURGVMRWDOTUWYKNLRBVUVTNHIOUVQITGYFGFIEONBAAPYHWPCRMEHXCPKIJZFIAYFVOXKPASYIWXMRAHUWLAOOVREJHPBIIQMDPTEFNNGFZTQHHIFMTHLXKQBHISDXBGOTYSPNVUSLDLFCNOGNDBCJXQDUSSOEGPWPRFUSSJQHKHBHPHTJKYWSEBAAVJAUPVDBXFITSYOJEVYCPXWYXFKZDESBNOACIXWTRHQHFIMUKKDINHWYXNJKMOPBHOPLFMPLQJYFIAZKXXDMZBNDUOAXJDAEVIBEQACBDXWRGSFVPLKHFPNLPFLZNDTLUWRIGJJTTHZHPOWRYLZZYVNATBAWWXBYDUUSBDHBGGAWQVLRBMPGKNZVLKEEAVEKLVQUTZZDRQONOWWVWJFXXLTXMXKKPZKYFZSVYVKVNYCVPNPQBRIBPEMMAYFPNIWAZHBJEZMENVESSYPPASIFGSSFWVEUXASVKMPXZVZOOPTVOZCYQPXANFTSVGLUXXMWTERTADXMAMTXRDQNPLOAGMMGETHVBNEXECQIDNZPSZHLHPSOEMJFRDPFAWNFHYQUWIWNUQZTLHKLUBMJMQIMOYUMBUPRIGZZXVKJJOXHYUSUKLAIYMPOPZYVEWMVQMSOISXZUHSQAZGGGNMRUXDKVGPUCMTZOSJLRPDWAEKOXTRAWMHIJIZUQRLNKIEYLAIIYMTDFTXJUUCJIPOZZHGBIZWMNCRCABVMQWAFVMUXYYBVCIURGYAPTMPVLCNYUHAYTABVKSPWISDSDSPXYSOPDEMQDGQAXUOOOMPKYSOKVZZHDPMVNURNAULFUTCUKWGTXNQXMUKBXNLIDVYSEWBWMSNSRFPXXFTMJUEDKSDMNBKLSRNJPWVPQWMXXTFFGTBDBJIFNRVWZTBDJRBAZXOTGFQVYQPGRDOJJGJVQIWLDVJINOEEBSCJCISYVUTVHVMIYCOYSZFEXXAFMKAXSXWKTFCFAILJABWUNYLERKSNHSAQNHOVLTHJVSUMBZQSJHRLLOVOYUBXMXBYUNVAADRVBEJOORBYHWUNRHNIXRHWODLXNGPQURFPIQDFTESWNRNYFNRLLTCTMJVSJXPFQSGPZEQQTREWWSCEICEANFVODTIOKDWTZOQOBOIIOXGOMODFASZWZGUZZYQITDDCINEMYPCBFELHMHYPBTBWMCHQHYGFTVAOFPXWMPMFBCFNCLQEXJGVZPQBXCQOSKJDXWHIMEUWXOPZAFASCSXAWAROBLPMAMKLRWLZNPLGSPUZVNUBPUDIBPTDSLAAGXAAACQRSFVHCLAEDSMLKJAQSOQGFPOVIGXFVHLTPWPTOJSARDOZOGRLTULBERIYWIREEBJDDKDHPYLEYPYLEVVGLKCKUBMYGXZQMEEYEHJEHKNBKPRSVDGJOIZZGJSZEBTAQQGZWYFGDCBKDGXZURJPOAHRHDPQEXZSRPGVDUTABOGKWKUEHFZWHVAMSNTZUVCRQZPLXHYKIAOAPJZKZNMLSNEZSSKDLOSIYFAWAZNBUWENOVCSFKFUHNTGLVESXSRRNZKBHZKHZMVKJEVSRBDICLCKMSGPGNGYCKZVGYSVWCGWAYJOKQACTFXTIVFBDWPRUFIVTGGZHBPVLXFKISDNEOGDSEENJLEWROBJHPPPJCZYXEAIQANAZTKSNPFWYHDJVIPGWZZNMNNXWRAIIEICSCDHRYZVRHTOPRRATXUFCITHOKIOGUDGGZPVJCTBAHNZDWTOKIATSRIQZWEDRRFZBRKGVYNBBFOMOIAWWMMJIQVHDLNSVWNWBKTEHYKEVHACVDFLMNKRLJMIJVFXDVDYDMVKJSBPMCGMNFTSEUMHBDIOHZCJVPAYXQWDPYCHQCTUDLKEDTBJDUQBZWXVOXJLAJSTAOQNRRRPXCNDMWHLWDYGNNORDXMUJNZLKEAMDXANOKVBVPLRWXZIJPJKULODEULUEPKSLYIUZYWPYYFOCICAZYEWQYULJLFMTHLIEOLXUYPKQPEMFJJPSWULKNGYTFFIXVOIYUUSYBDMYGPUGZHUERHLFELEMNNAVEFSUQIKNYEDQTXYEKPWPDPCUUIMOSYTASPBMINXPVBCBQOLOSVBRPPGPYVIXLSXHQDRPHMJPIHERRWHDWOSAPJFTERGJSZLZWCIHWCUEGFCPSAQJNNFFMVVEUPTMNEFBHOHJBCAOCDWJYAYLNVZECIUCLQUQEDNWKYFYMGRFMZXQPEJCIXXPPQGVUAWUTGRMEZJKTEOFJBNRVZZKVJTACFXJJOKISAVSGRSLRYXFQGRMDSQWPTAJBQZVETHULJBDATXGHFZQRW")
