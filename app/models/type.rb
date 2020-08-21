class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '純米大吟醸' },
    { id: 3, name: '純米吟醸' },
    { id: 4, name: '大吟醸' },
    { id: 5, name: '純米' },
    { id: 6, name: '本醸造' },
    { id: 7, name: '生酒' },
    { id: 8, name: '生原酒' },
    { id: 9, name: '無濾過生原酒' },
    { id: 10, name: 'どぶろく' },
    { id: 11, name: '普通酒' }
  ]
end
