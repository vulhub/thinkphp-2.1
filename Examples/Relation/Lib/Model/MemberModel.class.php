<?php
import('RelationModel');
class MemberModel extends RelationModel
{
	protected $_link = array(
        'Profile'=>HAS_ONE,
        'Dept'=>BELONGS_TO,
        'Card'=>HAS_MANY,
        'Groups'=>MANY_TO_MANY,
    );
}
?>