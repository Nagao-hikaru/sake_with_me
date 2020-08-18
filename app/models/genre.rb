class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '居酒屋'},
    { id: 3, name: '和食'},
    { id: 4, name: '天ぷら'},
    { id: 5, name: '焼肉'},
    { id: 6, name: '寿司'},
    { id: 7, name: '立ち呑み'},
    { id: 8, name: '蕎麦'},
    { id: 9, name: 'うどん'},
    { id: 10, name: '串揚げ'},
    { id: 11, name: '中華料理'},
    { id: 12, name: '焼き鳥'},
    { id: 13, name: 'お好み焼き、たこ焼き'},
    { id: 14, name: '鍋'},
    { id: 15, name: '洋食'},
    { id: 16, name: 'イタリアン'},
    { id: 17, name: 'ラーメン'}
  ]
end