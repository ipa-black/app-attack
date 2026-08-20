package org.apache.commons.io;

import java.io.File;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Collection;
import java.util.Vector;
/* loaded from: classes5.dex */
public class FileCleaner {
    private static Thread reaper;
    private static ReferenceQueue q = new ReferenceQueue();
    private static Collection trackers = new Vector();

    static {
        Thread thread = new Thread("File Reaper") { // from class: org.apache.commons.io.FileCleaner.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (true) {
                    try {
                        Tracker tracker = (Tracker) FileCleaner.q.remove();
                        tracker.delete();
                        tracker.clear();
                        FileCleaner.trackers.remove(tracker);
                    } catch (Exception unused) {
                    }
                }
            }
        };
        reaper = thread;
        thread.setPriority(10);
        reaper.setDaemon(true);
        reaper.start();
    }

    public static void track(File file, Object obj) {
        trackers.add(new Tracker(file, obj, q));
    }

    public static void track(String str, Object obj) {
        trackers.add(new Tracker(str, obj, q));
    }

    public static int getTrackCount() {
        return trackers.size();
    }

    /* loaded from: classes5.dex */
    private static class Tracker extends PhantomReference {
        private String path;

        public Tracker(File file, Object obj, ReferenceQueue referenceQueue) {
            this(file.getPath(), obj, referenceQueue);
        }

        public Tracker(String str, Object obj, ReferenceQueue referenceQueue) {
            super(obj, referenceQueue);
            this.path = str;
        }

        public boolean delete() {
            return new File(this.path).delete();
        }
    }
}
