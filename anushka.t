import streamlit as st

# Define clothing suggestions
clothing_suggestions = {
    'men': {
        '18-24': ['Graphic T-Shirts', 'Jogger Pants', 'Sneakers', 'Denim Jackets'],
        '25-34': ['Casual Blazers', 'Chinos', 'Loafers', 'Button-Down Shirts'],
        '35-44': ['Tailored Suits', 'Dress Shoes', 'Wool Sweaters', 'Corduroy Pants'],
        '45+': ['Comfortable Khakis', 'Cardigans', 'Leather Boots', 'Polo Shirts']
    },
    'women': {
        '18-24': ['Crop Tops', 'High-Waisted Jeans', 'Sneakers', 'Floral Dresses'],
        '25-34': ['Blazers', 'Midi Skirts', 'Ankle Boots', 'Wrap Dresses'],
        '35-44': ['Tailored Pants', 'Cardigans', 'Loafers', 'A-Line Dresses'],
        '45+': ['Elegant Blouses', 'Wide-Leg Trousers', 'Comfortable Flats', 'Knit Sweaters']
    }
}

st.title('Trendy Clothes Suggestion')

# Sidebar for user input
st.sidebar.header('Select Options')
gender = st.sidebar.radio('Select Gender:', ['Men', 'Women'])
age_group = st.sidebar.selectbox('Select Age Group:', ['18-24', '25-34', '35-44', '45+'])

# Show suggestions based on input
if gender and age_group:
    clothing_for_gender = clothing_suggestions[gender.lower()]
    suggestions = clothing_for_gender[age_group]
    
    st.subheader(f'Trendy Clothes for {gender} ({age_group}):')
    for item in suggestions:
        st.write(f'- {item}')

