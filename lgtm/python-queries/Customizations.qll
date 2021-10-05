import python
import semmle.python.security.dataflow.CleartextStorageCustomizations

class NonSource extends CleartextStorage::Sanitizer {
    NonSource() {
        from Comment c
        where c.getText().regexpMatch(".*\\blgtm *\\[.*\\bpy/not-sensitive-data\\b.*\\].*")
        select c
    }
}
