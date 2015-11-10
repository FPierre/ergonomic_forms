module PersonHelper
  def bootstrap_collection_radio_buttons attr_value, item
    item.label(class: "btn btn-secondary #{'active' if attr_value == item.value}") {
      item.radio_button + "<i class='fa fa-#{genders_icons(item.value)}'></i> ".html_safe + item.text
    }
  end

  def genders_icons gender
    { male: :mars, female: :venus, unknow: :question }[gender]
  end
end
