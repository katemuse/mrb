class AddBooks < ActiveRecord::Migration
  def self.up 
    down
    
    Book.create(:title => 'Botanik für Frauenzimmer und Pflanzenliebhaber, welche keine Gelehrten sind',    
                :author => 'August Johann Georg Karl, BATSCH',
                :imprint => '1795, Weimar',
                :description => "FIRST EDITION of a popular guide to botany intended for women and other amateur plant lovers. The volume contains a lucid exposition of the fundaments of botanical classification, with an overview of the different plant parts, reasons for plant diversity, and human uses of plants, a survey of plant types, categorized by leaves, woods, flowers and fruits, and a guide to Linnaeus' classification system. The purview is global and chapters include brief discussions of arcana such as amber and petrified wood, and of the possibility and causes of evolution (Verwandlung) in plants.  The finely hand-colored engravings, after Batsch's own drawings, depict a total of 101 plant parts.   \n\n

                Professor at Jena and founder of the botanical garden there, Batsch wrote in his short life a number of works on botany and mineralogy, most for laymen, his most significant scientific achievements being the discovery of over 200 new species of mushrooms and his masterful classification of fungi along Linnaean lines, in the Elenchus fungorum (1783-89). Patronized by Goethe, who obtained for him in 1794 the directorship of the new botanical institute in Jena, Batsch in turn advised the polymath on his own botanical research: Goethe notably submitted to him several drafts of the Versuch die Metamorphose der Pflanzen zu erklären (1790).  In the preface to the 1831 edition of the Metamorphosen, Goethe wrote that Batsch \"went his own way, and was not influenced by the idea [Goethe's plant theory], even though he concerned himself mainly with the identification of plant families\" (\"Dr. Batsch… ging auf seine eigne Weise darauf hin… Doch scheint die Idee auf der Gang seiner Studien keinen Einfluss gehabt zu haben, ob er sich schon hauptsächlich beschäftigte das Pflanzenreich in Familien zu sondern und zu ordnen\", cited by Schmidt, p. 244).   Nonetheless, the headings to Batsch's Chapter 66, 67 and 68 tacitly evoke Goethe's theory of plant structure, which held the leaf to be the archetypal form of all plant parts: \"Alles, was die Pflanzen zeigen, sind Stämme, Zweige, und vorzüglich Blattformen\"; \"Stufenfolge der Blattformen\"; \"Besondre Näherung und Entfernung der Blattformen\".      \n\n

                Batsch addresses his readers without condescension. A Rousseauist view of botany, friendly to the amateur plant-lover, was typical of the German Romantics: \"To Goethe and the Naturphilosophen… this understanding [of plants' relations] depended as much on a scientist's personal sympathy with nature as on his systematic study of it. Importantly, this specifically German understanding of nature included `ladies, artists, and botanic amateurs' in the scientific community\" (Koerner, p. 472).  The mention of women on the title may have also reflected a publishing strategy.  If so, it worked, as the \"Landes-Industrie-Comptoir\" reissued editions in 1798, 1799 (in French), 1818, and 1834. Danish and Swedish translations were published in 1801 and 1810.     \n\n

                Occasional light foxing to text, otherwise an excellent, uncut copy, the plates bright and fresh.   \n\n
                OCLC lists four copies in the US, none west of the Mississippi. Pritzel 484; Nissen, p. 207; Rehder, Bradley Bibliography: A Guide to the Literature of the Woody Plants of the World (1911), I:93; Günther Schmid, Goethe und die Naturwissenschaften: Eine Bibliographie, no. 1595.  Cf. Lisbet Koerner, \"Goethe's Botany: Lessons of a Feminine Science,\" Isis, Vol. 84, No. 3 (Sept. 1993): 470-495.
                ")
                                      
     Book.create(:title => 'Paedologia',    
                :author =>  "MOSELLANUS, P.; SCHADE, P.; HEGENDORFF, C.",
                :imprint => '1795, Weimar',
                :description => "MOSELLANUS, Petrus [Peter SCHADE] (1493-1524). <i>Paedologia ... in puerorum usum conscripta & aucta. Dialogi XXXVII</i>. - Christoph HEGENDORFF (1500-1540). <i>Dialogi pueriles ... XII lepidi aeque ac docti</i>. Strassburg: Christian Egenolph for Paul Goetz, 1529. \n\n 

                8vo (148 x 96 mm). [40] leaves. Italic and roman type. White-on-black criblé initial. Nineteenth-century olive polished morocco gilt, double blind fillet panel on sides with gold-tooled fleurons at corners and central stamped entrelac cartouche, turn-ins gilt, gilt edges, by Capé (slight wear to joints and head and tail of spine). A few early marginal notes.   \n\n    

                Rare edition of two popular humanist pedagogical works. The brilliant and sickly Hellenist Peter Schade, rector of Leipzig University by the age of 27, argued that Greek and Hebrew should be on an equal footing with Latin in the teaching of theological studies. He wrote these dialogues for schoolboys to teach them Latin rhetoric. The studious duos (Gaspar & Modestus, Pandulus & Petrus, Rhaphael & Servatius, et al.) discuss topics of interest to their readers: next semester’s classes (De authoribus proximo semestri in schola praelegendis), vacation (De vindemia & aucupio), birthdays and birthday presents (De natali celebrando, de receptis pecuniis), drinking, eating, hangovers and shows. The 20-year old Hegendorff wrote his own entertaining dialogues along the same lines for his pupils at St. Nicholas school in Leipzig. The two works were published together from 1520 and were true 16th-century best-sellers, over 45 editions being recorded. Most are now rare. Of this edition VD-16 records only the Bayerische Staatsbibliothek copy. Not in Buisson, and no copies in America.       \n\n                     

                VD-16 S 2155 & H 1167. ")                                                                     
  end

  def self.down
  end
end
