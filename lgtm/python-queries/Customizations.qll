import python
import semmle.python.security.dataflow.CleartextStorageCustomizations


class NonSourceForLogging extends CleartextLogging::Sanitizer {
    NonSource() {
        from Comment c
        where c.getText().regexpMatch(".*\\blgtm *\\[.*\\bpy/not-sensitive-data\\b.*\\].*")
        select c
    }
}


class NonSourceForStorage extends CleartextStorage::Sanitizer {
    NonSource() {
        from Comment c
        where c.getText().regexpMatch(".*\\blgtm *\\[.*\\bpy/not-sensitive-data\\b.*\\].*")
        select c
    }
}
