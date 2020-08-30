from flask import Flask
import random
app = Flask(__name__)

results = [
  "大吉",
  "中吉",
  "小吉",
  "吉",
  "凶",
  "大凶",
]

@app.route('/fortune')
def fortune():
  random.shuffle(results)
  return results[0]


## おまじない
if __name__ == "__main__":
  app.run(debug=True)