package org.apache.mina.io;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.io.IoFilter;
/* loaded from: classes4.dex */
public abstract class AbstractIoFilterChain implements IoFilterChain {
    private final Entry head;
    private final Entry tail;
    private final Map name2entry = new HashMap();
    private final Map filter2entry = new IdentityHashMap();

    protected abstract void doWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractIoFilterChain() {
        Entry entry = new Entry(null, null, TtmlNode.TAG_HEAD, createHeadFilter());
        this.head = entry;
        Entry entry2 = new Entry(entry, null, "tail", createTailFilter());
        this.tail = entry2;
        entry.nextEntry = entry2;
    }

    protected IoFilter createHeadFilter() {
        return new IoFilter() { // from class: org.apache.mina.io.AbstractIoFilterChain.1
            @Override // org.apache.mina.io.IoFilter
            public void sessionOpened(IoFilter.NextFilter nextFilter, IoSession ioSession) throws Exception {
                nextFilter.sessionOpened(ioSession);
            }

            @Override // org.apache.mina.io.IoFilter
            public void sessionClosed(IoFilter.NextFilter nextFilter, IoSession ioSession) throws Exception {
                nextFilter.sessionClosed(ioSession);
            }

            @Override // org.apache.mina.io.IoFilter
            public void sessionIdle(IoFilter.NextFilter nextFilter, IoSession ioSession, IdleStatus idleStatus) throws Exception {
                nextFilter.sessionIdle(ioSession, idleStatus);
            }

            @Override // org.apache.mina.io.IoFilter
            public void exceptionCaught(IoFilter.NextFilter nextFilter, IoSession ioSession, Throwable th) throws Exception {
                nextFilter.exceptionCaught(ioSession, th);
            }

            @Override // org.apache.mina.io.IoFilter
            public void dataRead(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) throws Exception {
                nextFilter.dataRead(ioSession, byteBuffer);
            }

            @Override // org.apache.mina.io.IoFilter
            public void dataWritten(IoFilter.NextFilter nextFilter, IoSession ioSession, Object obj) throws Exception {
                nextFilter.dataWritten(ioSession, obj);
            }

            @Override // org.apache.mina.io.IoFilter
            public void filterWrite(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj) throws Exception {
                AbstractIoFilterChain.this.doWrite(ioSession, byteBuffer, obj);
            }
        };
    }

    protected IoFilter createTailFilter() {
        return new IoFilter() { // from class: org.apache.mina.io.AbstractIoFilterChain.2
            @Override // org.apache.mina.io.IoFilter
            public void sessionOpened(IoFilter.NextFilter nextFilter, IoSession ioSession) throws Exception {
                ioSession.getHandler().sessionOpened(ioSession);
            }

            @Override // org.apache.mina.io.IoFilter
            public void sessionClosed(IoFilter.NextFilter nextFilter, IoSession ioSession) throws Exception {
                ioSession.getHandler().sessionClosed(ioSession);
            }

            @Override // org.apache.mina.io.IoFilter
            public void sessionIdle(IoFilter.NextFilter nextFilter, IoSession ioSession, IdleStatus idleStatus) throws Exception {
                ioSession.getHandler().sessionIdle(ioSession, idleStatus);
            }

            @Override // org.apache.mina.io.IoFilter
            public void exceptionCaught(IoFilter.NextFilter nextFilter, IoSession ioSession, Throwable th) throws Exception {
                ioSession.getHandler().exceptionCaught(ioSession, th);
            }

            @Override // org.apache.mina.io.IoFilter
            public void dataRead(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) throws Exception {
                ioSession.getHandler().dataRead(ioSession, byteBuffer);
                byteBuffer.release();
            }

            @Override // org.apache.mina.io.IoFilter
            public void dataWritten(IoFilter.NextFilter nextFilter, IoSession ioSession, Object obj) throws Exception {
                ioSession.getHandler().dataWritten(ioSession, obj);
            }

            @Override // org.apache.mina.io.IoFilter
            public void filterWrite(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj) throws Exception {
                nextFilter.filterWrite(ioSession, byteBuffer, obj);
            }
        };
    }

    @Override // org.apache.mina.io.IoFilterChain
    public IoFilter getChild(String str) {
        Entry entry = (Entry) this.name2entry.get(str);
        if (entry == null) {
            return null;
        }
        return entry.filter;
    }

    @Override // org.apache.mina.io.IoFilterChain
    public synchronized void addFirst(String str, IoFilter ioFilter) {
        checkAddable(str);
        register(this.head, str, ioFilter);
    }

    @Override // org.apache.mina.io.IoFilterChain
    public synchronized void addLast(String str, IoFilter ioFilter) {
        checkAddable(str);
        register(this.tail.prevEntry, str, ioFilter);
    }

    @Override // org.apache.mina.io.IoFilterChain
    public synchronized void addBefore(String str, String str2, IoFilter ioFilter) {
        Entry checkOldName = checkOldName(str);
        checkAddable(str2);
        register(checkOldName, str2, ioFilter);
    }

    @Override // org.apache.mina.io.IoFilterChain
    public synchronized void addAfter(String str, String str2, IoFilter ioFilter) {
        Entry checkOldName = checkOldName(str);
        checkAddable(str2);
        register(checkOldName.prevEntry, str2, ioFilter);
    }

    @Override // org.apache.mina.io.IoFilterChain
    public synchronized void remove(String str) {
        Entry checkOldName = checkOldName(str);
        Entry entry = checkOldName.prevEntry;
        Entry entry2 = checkOldName.nextEntry;
        entry.nextEntry = entry2;
        entry2.prevEntry = entry;
        this.name2entry.remove(str);
        this.filter2entry.remove(checkOldName.filter);
    }

    @Override // org.apache.mina.io.IoFilterChain
    public synchronized void clear() {
        Iterator it = new ArrayList(this.name2entry.keySet()).iterator();
        while (it.hasNext()) {
            remove((String) it.next());
        }
    }

    private void register(Entry entry, String str, IoFilter ioFilter) {
        Entry entry2 = new Entry(entry, entry.nextEntry, str, ioFilter);
        entry.nextEntry.prevEntry = entry2;
        entry.nextEntry = entry2;
        this.name2entry.put(str, entry2);
        this.filter2entry.put(ioFilter, entry2);
    }

    private Entry checkOldName(String str) {
        Entry entry = (Entry) this.name2entry.get(str);
        if (entry != null) {
            return entry;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown interceptor name:").append(str).toString());
    }

    private void checkAddable(String str) {
        if (this.name2entry.containsKey(str)) {
            throw new IllegalArgumentException(new StringBuffer("Other interceptor is using name '").append(str).append("'").toString());
        }
    }

    public void sessionOpened(IoSession ioSession) {
        callNextSessionOpened(this.head, ioSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextSessionOpened(Entry entry, IoSession ioSession) {
        try {
            entry.filter.sessionOpened(entry.nextFilter, ioSession);
        } catch (Throwable th) {
            exceptionCaught(ioSession, th);
        }
    }

    public void sessionClosed(IoSession ioSession) {
        callNextSessionClosed(this.head, ioSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextSessionClosed(Entry entry, IoSession ioSession) {
        try {
            entry.filter.sessionClosed(entry.nextFilter, ioSession);
        } catch (Throwable th) {
            exceptionCaught(ioSession, th);
        }
    }

    public void sessionIdle(IoSession ioSession, IdleStatus idleStatus) {
        callNextSessionIdle(this.head, ioSession, idleStatus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextSessionIdle(Entry entry, IoSession ioSession, IdleStatus idleStatus) {
        try {
            entry.filter.sessionIdle(entry.nextFilter, ioSession, idleStatus);
        } catch (Throwable th) {
            exceptionCaught(ioSession, th);
        }
    }

    public void dataRead(IoSession ioSession, ByteBuffer byteBuffer) {
        callNextDataRead(this.head, ioSession, byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextDataRead(Entry entry, IoSession ioSession, ByteBuffer byteBuffer) {
        try {
            entry.filter.dataRead(entry.nextFilter, ioSession, byteBuffer);
        } catch (Throwable th) {
            exceptionCaught(ioSession, th);
        }
    }

    public void dataWritten(IoSession ioSession, Object obj) {
        callNextDataWritten(this.head, ioSession, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextDataWritten(Entry entry, IoSession ioSession, Object obj) {
        try {
            entry.filter.dataWritten(entry.nextFilter, ioSession, obj);
        } catch (Throwable th) {
            exceptionCaught(ioSession, th);
        }
    }

    public void exceptionCaught(IoSession ioSession, Throwable th) {
        callNextExceptionCaught(this.head, ioSession, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callNextExceptionCaught(Entry entry, IoSession ioSession, Throwable th) {
        try {
            entry.filter.exceptionCaught(entry.nextFilter, ioSession, th);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void filterWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
        callPreviousFilterWrite(this.tail, ioSession, byteBuffer, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callPreviousFilterWrite(Entry entry, IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
        if (byteBuffer == null) {
            return;
        }
        try {
            entry.filter.filterWrite(entry.prevFilter, ioSession, byteBuffer, obj);
        } catch (Throwable th) {
            exceptionCaught(ioSession, th);
        }
    }

    @Override // org.apache.mina.io.IoFilterChain
    public List getChildren() {
        ArrayList arrayList = new ArrayList();
        for (Entry entry = this.head.nextEntry; entry != this.tail; entry = entry.nextEntry) {
            arrayList.add(entry.filter);
        }
        return arrayList;
    }

    @Override // org.apache.mina.io.IoFilterChain
    public List getChildrenReversed() {
        ArrayList arrayList = new ArrayList();
        for (Entry entry = this.tail.prevEntry; entry != this.head; entry = entry.prevEntry) {
            arrayList.add(entry.filter);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class Entry {
        private final IoFilter filter;
        private final String name;
        private Entry nextEntry;
        private final IoFilter.NextFilter nextFilter;
        private Entry prevEntry;
        private final IoFilter.NextFilter prevFilter;

        private Entry(Entry entry, Entry entry2, String str, IoFilter ioFilter) {
            if (ioFilter == null) {
                throw new NullPointerException("filter");
            }
            if (str == null) {
                throw new NullPointerException("name");
            }
            this.prevEntry = entry;
            this.nextEntry = entry2;
            this.name = str;
            this.filter = ioFilter;
            this.nextFilter = new IoFilter.NextFilter() { // from class: org.apache.mina.io.AbstractIoFilterChain.Entry.1
                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void sessionOpened(IoSession ioSession) {
                    AbstractIoFilterChain.this.callNextSessionOpened(Entry.this.nextEntry, ioSession);
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void sessionClosed(IoSession ioSession) {
                    AbstractIoFilterChain.this.callNextSessionClosed(Entry.this.nextEntry, ioSession);
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void sessionIdle(IoSession ioSession, IdleStatus idleStatus) {
                    AbstractIoFilterChain.this.callNextSessionIdle(Entry.this.nextEntry, ioSession, idleStatus);
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void exceptionCaught(IoSession ioSession, Throwable th) {
                    AbstractIoFilterChain.this.callNextExceptionCaught(Entry.this.nextEntry, ioSession, th);
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void dataRead(IoSession ioSession, ByteBuffer byteBuffer) {
                    AbstractIoFilterChain.this.callNextDataRead(Entry.this.nextEntry, ioSession, byteBuffer);
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void dataWritten(IoSession ioSession, Object obj) {
                    AbstractIoFilterChain.this.callNextDataWritten(Entry.this.nextEntry, ioSession, obj);
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void filterWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
                    throw new IllegalStateException();
                }
            };
            this.prevFilter = new IoFilter.NextFilter() { // from class: org.apache.mina.io.AbstractIoFilterChain.Entry.2
                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void sessionOpened(IoSession ioSession) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void sessionClosed(IoSession ioSession) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void sessionIdle(IoSession ioSession, IdleStatus idleStatus) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void exceptionCaught(IoSession ioSession, Throwable th) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void dataRead(IoSession ioSession, ByteBuffer byteBuffer) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void dataWritten(IoSession ioSession, Object obj) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoFilter.NextFilter
                public void filterWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
                    AbstractIoFilterChain.this.callPreviousFilterWrite(Entry.this.prevEntry, ioSession, byteBuffer, obj);
                }
            };
        }

        public String getName() {
            return this.name;
        }

        public IoFilter getFilter() {
            return this.filter;
        }
    }
}
