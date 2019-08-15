describe 'Meu primeiro script' do

  it 'visita pagina' do 
    visit 'https://training-wheels-protocol.herokuapp.com'
    expect(page.title).to eql 'Training Wheels Protocol'
  end

end