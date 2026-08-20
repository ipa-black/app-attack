package org.apache.mina.common;

import com.google.android.exoplayer2.C;
import java.nio.BufferOverflowException;
import java.nio.BufferUnderflowException;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import kotlin.UShort;
import org.apache.commons.collections.primitives.ArrayUnsignedIntList;
import org.apache.mina.util.Stack;
/* loaded from: classes4.dex */
public abstract class ByteBuffer {
    private static final int MINIMUM_CAPACITY = 1;
    private static final Stack containerStack = new Stack();
    private static final Stack[] heapBufferStacks = {new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack()};
    private static final Stack[] directBufferStacks = {new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack(), new Stack()};

    public abstract void acquire();

    public abstract CharBuffer asCharBuffer();

    public abstract DoubleBuffer asDoubleBuffer();

    public abstract FloatBuffer asFloatBuffer();

    public abstract IntBuffer asIntBuffer();

    public abstract LongBuffer asLongBuffer();

    public abstract ShortBuffer asShortBuffer();

    public abstract java.nio.ByteBuffer buf();

    public abstract int capacity();

    public abstract ByteBuffer clear();

    public abstract ByteBuffer compact();

    public abstract int compareTo(ByteBuffer byteBuffer);

    public abstract boolean equals(Object obj);

    public abstract ByteBuffer fill(byte b2, int i);

    public abstract ByteBuffer fill(int i);

    public abstract ByteBuffer fillAndReset(byte b2, int i);

    public abstract ByteBuffer fillAndReset(int i);

    public abstract ByteBuffer flip();

    public abstract byte get();

    public abstract byte get(int i);

    public abstract ByteBuffer get(byte[] bArr);

    public abstract ByteBuffer get(byte[] bArr, int i, int i2);

    public abstract char getChar();

    public abstract char getChar(int i);

    public abstract double getDouble();

    public abstract double getDouble(int i);

    public abstract float getFloat();

    public abstract float getFloat(int i);

    public abstract String getHexDump();

    public abstract int getInt();

    public abstract int getInt(int i);

    public abstract long getLong();

    public abstract long getLong(int i);

    public abstract short getShort();

    public abstract short getShort(int i);

    public abstract String getString(int i, CharsetDecoder charsetDecoder) throws CharacterCodingException;

    public abstract String getString(CharsetDecoder charsetDecoder) throws CharacterCodingException;

    public abstract short getUnsigned();

    public abstract short getUnsigned(int i);

    public abstract long getUnsignedInt();

    public abstract long getUnsignedInt(int i);

    public abstract int getUnsignedShort();

    public abstract int getUnsignedShort(int i);

    public abstract boolean hasRemaining();

    public abstract int hashCode();

    public abstract boolean isAutoExpand();

    public abstract boolean isDirect();

    public abstract int limit();

    public abstract ByteBuffer limit(int i);

    public abstract ByteBuffer mark();

    public abstract ByteOrder order();

    public abstract ByteBuffer order(ByteOrder byteOrder);

    public abstract int position();

    public abstract ByteBuffer position(int i);

    public abstract ByteBuffer put(byte b2);

    public abstract ByteBuffer put(int i, byte b2);

    public abstract ByteBuffer put(java.nio.ByteBuffer byteBuffer);

    public abstract ByteBuffer put(ByteBuffer byteBuffer);

    public abstract ByteBuffer put(byte[] bArr);

    public abstract ByteBuffer put(byte[] bArr, int i, int i2);

    public abstract ByteBuffer putChar(char c2);

    public abstract ByteBuffer putChar(int i, char c2);

    public abstract ByteBuffer putDouble(double d2);

    public abstract ByteBuffer putDouble(int i, double d2);

    public abstract ByteBuffer putFloat(float f2);

    public abstract ByteBuffer putFloat(int i, float f2);

    public abstract ByteBuffer putInt(int i);

    public abstract ByteBuffer putInt(int i, int i2);

    public abstract ByteBuffer putLong(int i, long j);

    public abstract ByteBuffer putLong(long j);

    public abstract ByteBuffer putShort(int i, short s);

    public abstract ByteBuffer putShort(short s);

    public abstract ByteBuffer putString(CharSequence charSequence, int i, CharsetEncoder charsetEncoder) throws CharacterCodingException;

    public abstract ByteBuffer putString(CharSequence charSequence, CharsetEncoder charsetEncoder) throws CharacterCodingException;

    public abstract void release();

    public abstract int remaining();

    public abstract ByteBuffer reset();

    public abstract ByteBuffer rewind();

    public abstract ByteBuffer setAutoExpand(boolean z);

    public abstract ByteBuffer skip(int i);

    public abstract String toString();

    public static ByteBuffer allocate(int i) {
        try {
            return allocate(i, true);
        } catch (OutOfMemoryError unused) {
            return allocate(i, false);
        }
    }

    public static ByteBuffer allocate(int i, boolean z) {
        DefaultByteBuffer defaultByteBuffer;
        java.nio.ByteBuffer allocate0 = allocate0(i, z);
        Stack stack = containerStack;
        synchronized (stack) {
            defaultByteBuffer = (DefaultByteBuffer) stack.pop();
        }
        if (defaultByteBuffer == null) {
            defaultByteBuffer = new DefaultByteBuffer();
        }
        defaultByteBuffer.init(allocate0);
        return defaultByteBuffer;
    }

    private static java.nio.ByteBuffer allocate0(int i, boolean z) {
        java.nio.ByteBuffer byteBuffer;
        Stack[] stackArr = z ? directBufferStacks : heapBufferStacks;
        int bufferStackIndex = getBufferStackIndex(stackArr, i);
        Stack stack = stackArr[bufferStackIndex];
        synchronized (stack) {
            byteBuffer = (java.nio.ByteBuffer) stack.pop();
        }
        if (byteBuffer == null) {
            int i2 = 1 << bufferStackIndex;
            byteBuffer = z ? java.nio.ByteBuffer.allocateDirect(i2) : java.nio.ByteBuffer.allocate(i2);
        }
        byteBuffer.clear();
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
        return byteBuffer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void release0(java.nio.ByteBuffer byteBuffer) {
        Stack[] stackArr = byteBuffer.isDirect() ? directBufferStacks : heapBufferStacks;
        Stack stack = stackArr[getBufferStackIndex(stackArr, byteBuffer.capacity())];
        synchronized (stack) {
            stack.push(byteBuffer);
        }
    }

    public static ByteBuffer wrap(java.nio.ByteBuffer byteBuffer) {
        DefaultByteBuffer defaultByteBuffer = new DefaultByteBuffer();
        defaultByteBuffer.init(byteBuffer);
        return defaultByteBuffer;
    }

    public static ByteBuffer wrap(byte[] bArr) {
        return wrap(java.nio.ByteBuffer.wrap(bArr));
    }

    public static ByteBuffer wrap(byte[] bArr, int i, int i2) {
        return wrap(java.nio.ByteBuffer.wrap(bArr, i, i2));
    }

    private static int getBufferStackIndex(Stack[] stackArr, int i) {
        int i2 = 1;
        int i3 = 0;
        while (i > i2) {
            i2 <<= 1;
            i3++;
            if (i3 >= stackArr.length) {
                throw new IllegalArgumentException(new StringBuffer("Buffer size is too big: ").append(i).toString());
            }
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class DefaultByteBuffer extends ByteBuffer {
        private boolean autoExpand;
        private java.nio.ByteBuffer buf;
        private int refCount = 1;

        protected DefaultByteBuffer() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void init(java.nio.ByteBuffer byteBuffer) {
            this.buf = byteBuffer;
            this.autoExpand = false;
            this.refCount = 1;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public synchronized void acquire() {
            int i = this.refCount;
            if (i <= 0) {
                throw new IllegalStateException("Already released buffer.");
            }
            this.refCount = i + 1;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public void release() {
            synchronized (this) {
                int i = this.refCount;
                if (i <= 0) {
                    this.refCount = 0;
                    throw new IllegalStateException("Already released buffer.  You released the buffer too many times.");
                }
                int i2 = i - 1;
                this.refCount = i2;
                if (i2 > 0) {
                    return;
                }
                ByteBuffer.release0(this.buf);
                synchronized (ByteBuffer.containerStack) {
                    ByteBuffer.containerStack.push(this);
                }
            }
        }

        @Override // org.apache.mina.common.ByteBuffer
        public java.nio.ByteBuffer buf() {
            return this.buf;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public boolean isDirect() {
            return this.buf.isDirect();
        }

        public boolean isReadOnly() {
            return this.buf.isReadOnly();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public boolean isAutoExpand() {
            return this.autoExpand;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer setAutoExpand(boolean z) {
            this.autoExpand = z;
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public int capacity() {
            return this.buf.capacity();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public int position() {
            return this.buf.position();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer position(int i) {
            autoExpand(i, 0);
            this.buf.position(i);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public int limit() {
            return this.buf.limit();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer limit(int i) {
            autoExpand(i, 0);
            this.buf.limit(i);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer mark() {
            this.buf.mark();
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer reset() {
            this.buf.reset();
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer clear() {
            this.buf.clear();
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer flip() {
            this.buf.flip();
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer rewind() {
            this.buf.rewind();
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public int remaining() {
            return this.buf.remaining();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public boolean hasRemaining() {
            return this.buf.hasRemaining();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public byte get() {
            return this.buf.get();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public short getUnsigned() {
            return (short) (get() & 255);
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer put(byte b2) {
            autoExpand(1);
            this.buf.put(b2);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public byte get(int i) {
            return this.buf.get(i);
        }

        @Override // org.apache.mina.common.ByteBuffer
        public short getUnsigned(int i) {
            return (short) (get(i) & 255);
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer put(int i, byte b2) {
            autoExpand(i, 1);
            this.buf.put(i, b2);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer get(byte[] bArr, int i, int i2) {
            this.buf.get(bArr, i, i2);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer get(byte[] bArr) {
            this.buf.get(bArr);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer put(java.nio.ByteBuffer byteBuffer) {
            autoExpand(byteBuffer.remaining());
            this.buf.put(byteBuffer);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer put(ByteBuffer byteBuffer) {
            autoExpand(byteBuffer.remaining());
            this.buf.put(byteBuffer.buf());
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer put(byte[] bArr, int i, int i2) {
            autoExpand(i2);
            this.buf.put(bArr, i, i2);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer put(byte[] bArr) {
            autoExpand(bArr.length);
            this.buf.put(bArr);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer compact() {
            this.buf.compact();
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public String toString() {
            return this.buf.toString();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public int hashCode() {
            return this.buf.hashCode();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public boolean equals(Object obj) {
            if (obj instanceof ByteBuffer) {
                return this.buf.equals(((ByteBuffer) obj).buf());
            }
            return false;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public int compareTo(ByteBuffer byteBuffer) {
            return this.buf.compareTo(byteBuffer.buf());
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteOrder order() {
            return this.buf.order();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer order(ByteOrder byteOrder) {
            this.buf.order(byteOrder);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public char getChar() {
            return this.buf.getChar();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putChar(char c2) {
            autoExpand(2);
            this.buf.putChar(c2);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public char getChar(int i) {
            return this.buf.getChar(i);
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putChar(int i, char c2) {
            autoExpand(i, 2);
            this.buf.putChar(i, c2);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public CharBuffer asCharBuffer() {
            return this.buf.asCharBuffer();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public short getShort() {
            return this.buf.getShort();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public int getUnsignedShort() {
            return getShort() & UShort.MAX_VALUE;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putShort(short s) {
            autoExpand(2);
            this.buf.putShort(s);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public short getShort(int i) {
            return this.buf.getShort(i);
        }

        @Override // org.apache.mina.common.ByteBuffer
        public int getUnsignedShort(int i) {
            return getShort(i) & UShort.MAX_VALUE;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putShort(int i, short s) {
            autoExpand(i, 2);
            this.buf.putShort(i, s);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ShortBuffer asShortBuffer() {
            return this.buf.asShortBuffer();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public int getInt() {
            return this.buf.getInt();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public long getUnsignedInt() {
            return getInt() & ArrayUnsignedIntList.MAX_VALUE;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putInt(int i) {
            autoExpand(4);
            this.buf.putInt(i);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public int getInt(int i) {
            return this.buf.getInt(i);
        }

        @Override // org.apache.mina.common.ByteBuffer
        public long getUnsignedInt(int i) {
            return getInt(i) & ArrayUnsignedIntList.MAX_VALUE;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putInt(int i, int i2) {
            autoExpand(i, 4);
            this.buf.putInt(i, i2);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public IntBuffer asIntBuffer() {
            return this.buf.asIntBuffer();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public long getLong() {
            return this.buf.getLong();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putLong(long j) {
            autoExpand(8);
            this.buf.putLong(j);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public long getLong(int i) {
            return this.buf.getLong(i);
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putLong(int i, long j) {
            autoExpand(i, 8);
            this.buf.putLong(i, j);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public LongBuffer asLongBuffer() {
            return this.buf.asLongBuffer();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public float getFloat() {
            return this.buf.getFloat();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putFloat(float f2) {
            autoExpand(4);
            this.buf.putFloat(f2);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public float getFloat(int i) {
            return this.buf.getFloat(i);
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putFloat(int i, float f2) {
            autoExpand(i, 4);
            this.buf.putFloat(i, f2);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public FloatBuffer asFloatBuffer() {
            return this.buf.asFloatBuffer();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public double getDouble() {
            return this.buf.getDouble();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putDouble(double d2) {
            autoExpand(8);
            this.buf.putDouble(d2);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public double getDouble(int i) {
            return this.buf.getDouble(i);
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putDouble(int i, double d2) {
            autoExpand(i, 8);
            this.buf.putDouble(i, d2);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public DoubleBuffer asDoubleBuffer() {
            return this.buf.asDoubleBuffer();
        }

        @Override // org.apache.mina.common.ByteBuffer
        public String getHexDump() {
            return ByteBufferHexDumper.getHexdump(this);
        }

        @Override // org.apache.mina.common.ByteBuffer
        public String getString(CharsetDecoder charsetDecoder) throws CharacterCodingException {
            int position;
            CoderResult flush;
            boolean startsWith = charsetDecoder.charset().name().startsWith(C.UTF16_NAME);
            int position2 = this.buf.position();
            int limit = this.buf.limit();
            if (!startsWith) {
                while (this.buf.hasRemaining() && this.buf.get() != 0) {
                }
                position = this.buf.position();
                if (position == limit) {
                    this.buf.limit(position);
                } else {
                    this.buf.limit(position - 1);
                }
            } else {
                while (this.buf.remaining() >= 2 && (this.buf.get() != 0 || this.buf.get() != 0)) {
                }
                position = this.buf.position();
                if (position == limit || position == limit - 1) {
                    this.buf.limit(position);
                } else {
                    this.buf.limit(position - 2);
                }
            }
            this.buf.position(position2);
            charsetDecoder.reset();
            int remaining = (int) (this.buf.remaining() * charsetDecoder.averageCharsPerByte());
            CharBuffer allocate = CharBuffer.allocate(remaining);
            while (true) {
                if (this.buf.hasRemaining()) {
                    flush = charsetDecoder.decode(this.buf, allocate, true);
                } else {
                    flush = charsetDecoder.flush(allocate);
                }
                if (!flush.isUnderflow()) {
                    if (flush.isOverflow()) {
                        CharBuffer allocate2 = CharBuffer.allocate(allocate.capacity() + remaining);
                        allocate.flip();
                        allocate2.put(allocate);
                        allocate = allocate2;
                    } else {
                        flush.throwException();
                    }
                } else {
                    this.buf.limit(limit);
                    this.buf.position(position);
                    return allocate.flip().toString();
                }
            }
        }

        @Override // org.apache.mina.common.ByteBuffer
        public String getString(int i, CharsetDecoder charsetDecoder) throws CharacterCodingException {
            CoderResult flush;
            checkFieldSize(i);
            if (i == 0) {
                return "";
            }
            boolean startsWith = charsetDecoder.charset().name().startsWith(C.UTF16_NAME);
            if (startsWith && (i & 1) != 0) {
                throw new IllegalArgumentException("fieldSize is not even.");
            }
            int position = this.buf.position();
            int limit = this.buf.limit();
            int position2 = this.buf.position() + i;
            if (limit < position2) {
                throw new BufferUnderflowException();
            }
            int i2 = 0;
            if (!startsWith) {
                while (i2 < i && this.buf.get() != 0) {
                    i2++;
                }
                if (i2 == i) {
                    this.buf.limit(position2);
                } else {
                    java.nio.ByteBuffer byteBuffer = this.buf;
                    byteBuffer.limit(byteBuffer.position() - 1);
                }
            } else {
                while (i2 < i && (this.buf.get() != 0 || this.buf.get() != 0)) {
                    i2 += 2;
                }
                if (i2 == i) {
                    this.buf.limit(position2);
                } else {
                    java.nio.ByteBuffer byteBuffer2 = this.buf;
                    byteBuffer2.limit(byteBuffer2.position() - 2);
                }
            }
            this.buf.position(position);
            charsetDecoder.reset();
            int remaining = (int) (this.buf.remaining() * charsetDecoder.averageCharsPerByte());
            CharBuffer allocate = CharBuffer.allocate(remaining);
            while (true) {
                if (this.buf.hasRemaining()) {
                    flush = charsetDecoder.decode(this.buf, allocate, true);
                } else {
                    flush = charsetDecoder.flush(allocate);
                }
                if (!flush.isUnderflow()) {
                    if (flush.isOverflow()) {
                        CharBuffer allocate2 = CharBuffer.allocate(allocate.capacity() + remaining);
                        allocate.flip();
                        allocate2.put(allocate);
                        allocate = allocate2;
                    } else {
                        flush.throwException();
                    }
                } else {
                    this.buf.limit(limit);
                    this.buf.position(position2);
                    return allocate.flip().toString();
                }
            }
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putString(CharSequence charSequence, int i, CharsetEncoder charsetEncoder) throws CharacterCodingException {
            CoderResult flush;
            checkFieldSize(i);
            if (i == 0) {
                return this;
            }
            autoExpand(i);
            CharBuffer wrap = CharBuffer.wrap(charSequence);
            boolean startsWith = charsetEncoder.charset().name().startsWith(C.UTF16_NAME);
            if (startsWith && (i & 1) != 0) {
                throw new IllegalArgumentException("fieldSize is not even.");
            }
            int limit = this.buf.limit();
            int position = this.buf.position() + i;
            if (limit < position) {
                throw new BufferOverflowException();
            }
            this.buf.limit(position);
            charsetEncoder.reset();
            while (true) {
                if (wrap.hasRemaining()) {
                    flush = charsetEncoder.encode(wrap, buf(), true);
                } else {
                    flush = charsetEncoder.flush(buf());
                }
                if (flush.isUnderflow() || flush.isOverflow()) {
                    break;
                }
                flush.throwException();
            }
            this.buf.limit(limit);
            if (this.buf.position() < position) {
                if (!startsWith) {
                    this.buf.put((byte) 0);
                } else {
                    this.buf.put((byte) 0);
                    this.buf.put((byte) 0);
                }
            }
            this.buf.position(position);
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer putString(CharSequence charSequence, CharsetEncoder charsetEncoder) throws CharacterCodingException {
            CoderResult flush;
            CharBuffer wrap = CharBuffer.wrap(charSequence);
            int remaining = (int) (wrap.remaining() * charsetEncoder.averageBytesPerChar());
            charsetEncoder.reset();
            while (true) {
                if (wrap.hasRemaining()) {
                    flush = charsetEncoder.encode(wrap, buf(), true);
                } else {
                    flush = charsetEncoder.flush(buf());
                }
                if (flush.isUnderflow()) {
                    return this;
                }
                if (flush.isOverflow() && this.autoExpand) {
                    autoExpand(remaining);
                } else {
                    flush.throwException();
                }
            }
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer skip(int i) {
            autoExpand(i);
            return position(position() + i);
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer fill(byte b2, int i) {
            autoExpand(i);
            int i2 = i >>> 3;
            int i3 = i & 7;
            if (i2 > 0) {
                long j = (b2 << 8) | b2 | (b2 << 16) | (b2 << 24);
                long j2 = j | (j << 32);
                while (i2 > 0) {
                    this.buf.putLong(j2);
                    i2--;
                }
            }
            int i4 = i3 >>> 2;
            int i5 = i & 3;
            if (i4 > 0) {
                this.buf.putInt((b2 << 8) | b2 | (b2 << 16) | (b2 << 24));
            }
            int i6 = i & 1;
            if ((i5 >> 1) > 0) {
                this.buf.putShort((short) ((b2 << 8) | b2));
            }
            if (i6 > 0) {
                this.buf.put(b2);
            }
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer fillAndReset(byte b2, int i) {
            autoExpand(i);
            int position = this.buf.position();
            try {
                fill(b2, i);
                return this;
            } finally {
                this.buf.position(position);
            }
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer fill(int i) {
            autoExpand(i);
            int i2 = i & 7;
            for (int i3 = i >>> 3; i3 > 0; i3--) {
                this.buf.putLong(0L);
            }
            int i4 = i2 >>> 2;
            int i5 = i & 3;
            if (i4 > 0) {
                this.buf.putInt(0);
            }
            int i6 = i & 1;
            if ((i5 >> 1) > 0) {
                this.buf.putShort((short) 0);
            }
            if (i6 > 0) {
                this.buf.put((byte) 0);
            }
            return this;
        }

        @Override // org.apache.mina.common.ByteBuffer
        public ByteBuffer fillAndReset(int i) {
            autoExpand(i);
            int position = this.buf.position();
            try {
                fill(i);
                return this;
            } finally {
                this.buf.position(position);
            }
        }

        private void autoExpand(int i) {
            if (this.autoExpand) {
                int position = this.buf.position() + i;
                if (position > this.buf.limit()) {
                    ensureCapacity(position);
                    this.buf.limit(position);
                }
            }
        }

        private void autoExpand(int i, int i2) {
            int i3;
            if (!this.autoExpand || (i3 = i + i2) <= this.buf.limit()) {
                return;
            }
            ensureCapacity(i3);
            this.buf.limit(i3);
        }

        private void ensureCapacity(int i) {
            if (i <= this.buf.capacity()) {
                return;
            }
            int i2 = 1;
            while (i2 < i) {
                i2 <<= 1;
            }
            java.nio.ByteBuffer byteBuffer = this.buf;
            java.nio.ByteBuffer allocateDirect = isDirect() ? java.nio.ByteBuffer.allocateDirect(i2) : java.nio.ByteBuffer.allocate(i2);
            int position = byteBuffer.position();
            int limit = byteBuffer.limit();
            byteBuffer.clear();
            allocateDirect.put(byteBuffer);
            allocateDirect.position(0);
            allocateDirect.limit(limit);
            allocateDirect.position(position);
            this.buf = allocateDirect;
            ByteBuffer.release0(byteBuffer);
        }

        private static void checkFieldSize(int i) {
            if (i < 0) {
                throw new IllegalArgumentException(new StringBuffer("fieldSize cannot be negative: ").append(i).toString());
            }
        }
    }
}
