import { connect } from 'react-redux';
import CategoriesItem from './categories_item';


const mapStateToProps = (state, { params, location }) => ({
  feeds: state.feeds,
  categories: state.categories,
  categoriesId: params.catId,
  pageType: location.pathname.slice(6, 9)
});

const mapDispatchToProps = (dispatch) => ({

});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CategoriesItem);
