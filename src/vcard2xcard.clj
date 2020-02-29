(ns vcard2xcard
  (:import [ezvcard Ezvcard]))

(defn -main [& args]
  (-> *in* slurp Ezvcard/parse .all Ezvcard/writeXml .go print))
