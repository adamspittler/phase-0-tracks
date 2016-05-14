backpack = {
  first_pocket:{
    wallet: {
      bill_section: {
        ten_dollar_bill: 2, 
        one_dollar_bill: 3, 
        laundry_receipt: 1
      },
      card_section: ['credit_card', 'metro_card', 'id_card']
    },
    tote: {
      make_upcase: ['make_up', 'brush'],
      key_ring: ['house key', 'building key', 'work key']
    }
  },
  second_pocket: ["gum", "pen", "tissue"],
  third_pocket: [
    'book',
    'note book',
    folder = {
      resume: 'only copy',
      blank_paper_sheet: 5
    }
  ]
}

p backpack[:first_pocket][:wallet][:card_section][0]
p backpack[:second_pocket][2]
p backpack[:third_pocket][2][:resume]
p backpack[:first_pocket][:tote][:key_ring].first.capitalize

