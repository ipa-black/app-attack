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
import org.apache.mina.io.IoHandlerFilter;
/* loaded from: classes4.dex */
public abstract class AbstractIoHandlerFilterChain implements IoHandlerFilterChain {
    private final Entry head;
    private final Entry tail;
    private final Map name2entry = new HashMap();
    private final Map filter2entry = new IdentityHashMap();

    protected abstract void doWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj);

    protected AbstractIoHandlerFilterChain() {
        Entry entry = new Entry(null, null, TtmlNode.TAG_HEAD, createHeadFilter());
        this.head = entry;
        Entry entry2 = new Entry(entry, null, "tail", createTailFilter());
        this.tail = entry2;
        entry.nextEntry = entry2;
    }

    protected IoHandlerFilter createHeadFilter() {
        return new IoHandlerFilter() { // from class: org.apache.mina.io.AbstractIoHandlerFilterChain.1
            @Override // org.apache.mina.io.IoHandlerFilter
            public void sessionOpened(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession) {
                nextFilter.sessionOpened(ioSession);
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void sessionClosed(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession) {
                nextFilter.sessionClosed(ioSession);
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void sessionIdle(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, IdleStatus idleStatus) {
                nextFilter.sessionIdle(ioSession, idleStatus);
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void exceptionCaught(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, Throwable th) {
                nextFilter.exceptionCaught(ioSession, th);
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void dataRead(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) {
                nextFilter.dataRead(ioSession, byteBuffer);
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void dataWritten(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, Object obj) {
                nextFilter.dataWritten(ioSession, obj);
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void filterWrite(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
                AbstractIoHandlerFilterChain.this.doWrite(ioSession, byteBuffer, obj);
            }
        };
    }

    protected IoHandlerFilter createTailFilter() {
        return new IoHandlerFilter() { // from class: org.apache.mina.io.AbstractIoHandlerFilterChain.2
            @Override // org.apache.mina.io.IoHandlerFilter
            public void sessionOpened(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession) {
                ioSession.getHandler().sessionOpened(ioSession);
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void sessionClosed(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession) {
                ioSession.getHandler().sessionClosed(ioSession);
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void sessionIdle(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, IdleStatus idleStatus) {
                ioSession.getHandler().sessionIdle(ioSession, idleStatus);
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void exceptionCaught(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, Throwable th) {
                ioSession.getHandler().exceptionCaught(ioSession, th);
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void dataRead(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) {
                ioSession.getHandler().dataRead(ioSession, byteBuffer);
                byteBuffer.release();
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void dataWritten(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, Object obj) {
                ioSession.getHandler().dataWritten(ioSession, obj);
            }

            @Override // org.apache.mina.io.IoHandlerFilter
            public void filterWrite(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
                nextFilter.filterWrite(ioSession, byteBuffer, obj);
            }
        };
    }

    @Override // org.apache.mina.io.IoHandlerFilterChain
    public IoHandlerFilter getChild(String str) {
        Entry entry = (Entry) this.name2entry.get(str);
        if (entry == null) {
            return null;
        }
        return entry.filter;
    }

    @Override // org.apache.mina.io.IoHandlerFilterChain
    public synchronized void addFirst(String str, IoHandlerFilter ioHandlerFilter) {
        checkAddable(str);
        register(this.head, str, ioHandlerFilter);
    }

    @Override // org.apache.mina.io.IoHandlerFilterChain
    public synchronized void addLast(String str, IoHandlerFilter ioHandlerFilter) {
        checkAddable(str);
        register(this.tail.prevEntry, str, ioHandlerFilter);
    }

    @Override // org.apache.mina.io.IoHandlerFilterChain
    public synchronized void addBefore(String str, String str2, IoHandlerFilter ioHandlerFilter) {
        Entry checkOldName = checkOldName(str);
        checkAddable(str2);
        register(checkOldName, str2, ioHandlerFilter);
    }

    @Override // org.apache.mina.io.IoHandlerFilterChain
    public synchronized void addAfter(String str, String str2, IoHandlerFilter ioHandlerFilter) {
        Entry checkOldName = checkOldName(str);
        checkAddable(str2);
        register(checkOldName.prevEntry, str2, ioHandlerFilter);
    }

    @Override // org.apache.mina.io.IoHandlerFilterChain
    public synchronized void remove(String str) {
        Entry checkOldName = checkOldName(str);
        Entry entry = checkOldName.prevEntry;
        Entry entry2 = checkOldName.nextEntry;
        entry.nextEntry = entry2;
        entry2.prevEntry = entry;
        this.name2entry.remove(str);
        this.filter2entry.remove(checkOldName.filter);
    }

    @Override // org.apache.mina.io.IoHandlerFilterChain
    public synchronized void clear() {
        Iterator it = new ArrayList(this.name2entry.keySet()).iterator();
        while (it.hasNext()) {
            remove((String) it.next());
        }
    }

    private void register(Entry entry, String str, IoHandlerFilter ioHandlerFilter) {
        Entry entry2 = new Entry(entry, entry.nextEntry, str, ioHandlerFilter);
        entry.nextEntry.prevEntry = entry2;
        entry.nextEntry = entry2;
        this.name2entry.put(str, entry2);
        this.filter2entry.put(ioHandlerFilter, entry2);
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

    @Override // org.apache.mina.io.IoHandlerFilterChain
    public List getChildren() {
        ArrayList arrayList = new ArrayList();
        for (Entry entry = this.head.nextEntry; entry != this.tail; entry = entry.nextEntry) {
            arrayList.add(entry.filter);
        }
        return arrayList;
    }

    @Override // org.apache.mina.io.IoHandlerFilterChain
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
        private final IoHandlerFilter filter;
        private final String name;
        private Entry nextEntry;
        private final IoHandlerFilter.NextFilter nextFilter;
        private Entry prevEntry;
        private final IoHandlerFilter.NextFilter prevFilter;

        private Entry(Entry entry, Entry entry2, String str, IoHandlerFilter ioHandlerFilter) {
            if (ioHandlerFilter == null) {
                throw new NullPointerException("filter");
            }
            if (str == null) {
                throw new NullPointerException("name");
            }
            this.prevEntry = entry;
            this.nextEntry = entry2;
            this.name = str;
            this.filter = ioHandlerFilter;
            this.nextFilter = new IoHandlerFilter.NextFilter() { // from class: org.apache.mina.io.AbstractIoHandlerFilterChain.Entry.1
                @Override // org.apache.mina.io.IoHandler
                public void sessionOpened(IoSession ioSession) {
                    AbstractIoHandlerFilterChain.this.callNextSessionOpened(Entry.this.nextEntry, ioSession);
                }

                @Override // org.apache.mina.io.IoHandler
                public void sessionClosed(IoSession ioSession) {
                    AbstractIoHandlerFilterChain.this.callNextSessionClosed(Entry.this.nextEntry, ioSession);
                }

                @Override // org.apache.mina.io.IoHandler
                public void sessionIdle(IoSession ioSession, IdleStatus idleStatus) {
                    AbstractIoHandlerFilterChain.this.callNextSessionIdle(Entry.this.nextEntry, ioSession, idleStatus);
                }

                @Override // org.apache.mina.io.IoHandler
                public void exceptionCaught(IoSession ioSession, Throwable th) {
                    AbstractIoHandlerFilterChain.this.callNextExceptionCaught(Entry.this.nextEntry, ioSession, th);
                }

                @Override // org.apache.mina.io.IoHandler
                public void dataRead(IoSession ioSession, ByteBuffer byteBuffer) {
                    AbstractIoHandlerFilterChain.this.callNextDataRead(Entry.this.nextEntry, ioSession, byteBuffer);
                }

                @Override // org.apache.mina.io.IoHandler
                public void dataWritten(IoSession ioSession, Object obj) {
                    AbstractIoHandlerFilterChain.this.callNextDataWritten(Entry.this.nextEntry, ioSession, obj);
                }

                @Override // org.apache.mina.io.IoHandlerFilter.NextFilter
                public void filterWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
                    throw new IllegalStateException();
                }
            };
            this.prevFilter = new IoHandlerFilter.NextFilter() { // from class: org.apache.mina.io.AbstractIoHandlerFilterChain.Entry.2
                @Override // org.apache.mina.io.IoHandler
                public void sessionOpened(IoSession ioSession) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoHandler
                public void sessionClosed(IoSession ioSession) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoHandler
                public void sessionIdle(IoSession ioSession, IdleStatus idleStatus) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoHandler
                public void exceptionCaught(IoSession ioSession, Throwable th) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoHandler
                public void dataRead(IoSession ioSession, ByteBuffer byteBuffer) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoHandler
                public void dataWritten(IoSession ioSession, Object obj) {
                    throw new IllegalStateException();
                }

                @Override // org.apache.mina.io.IoHandlerFilter.NextFilter
                public void filterWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
                    AbstractIoHandlerFilterChain.this.callPreviousFilterWrite(Entry.this.prevEntry, ioSession, byteBuffer, obj);
                }
            };
        }

        public String getName() {
            return this.name;
        }

        public IoHandlerFilter getFilter() {
            return this.filter;
        }
    }
}
