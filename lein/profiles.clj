{:user {:plugin-repositories [["private-plugins" {:url "private repo url"}]]
  :dependencies [[pjstadig/humane-test-output "0.6.0"]]
  :injections [(require 'pjstadig.humane-test-output)
               (pjstadig.humane-test-output/activate!)]
  :plugins [[lein-cloverage "1.0.6"]
            [lein-ancient "0.5.5"]
            [jonase/eastwood "0.2.1"]
            [lein-kibit "0.0.8"]
            [lein-pprint "1.1.2"]]
  :test-refresh {:notify-command ["terminal-notifier" "-title" "Tests" "-message"]}}}
