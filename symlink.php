$targetFolder = $_SERVER['DOCUMENT_ROOT'].'testing/storage/app/public';
$linkFolder = $_SERVER['DOCUMENT_ROOT'].'testing/public/storage';
symlink($targetFolder,$linkFolder);
echo 'Symlink process successfully completed';