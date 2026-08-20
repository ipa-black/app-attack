package org.apache.mina.common;

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
/* loaded from: classes4.dex */
public class ByteBufferProxy extends ByteBuffer {
    protected ByteBuffer buf;

    protected ByteBufferProxy(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new NullPointerException("buf");
        }
        this.buf = byteBuffer;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public void acquire() {
        this.buf.acquire();
    }

    @Override // org.apache.mina.common.ByteBuffer
    public void release() {
        this.buf.release();
    }

    @Override // org.apache.mina.common.ByteBuffer
    public boolean isDirect() {
        return this.buf.isDirect();
    }

    @Override // org.apache.mina.common.ByteBuffer
    public java.nio.ByteBuffer buf() {
        return this.buf.buf();
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
        this.buf.position(i);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public int limit() {
        return this.buf.limit();
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer limit(int i) {
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
        return this.buf.getUnsigned();
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer put(byte b2) {
        this.buf.put(b2);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public byte get(int i) {
        return this.buf.get(i);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public short getUnsigned(int i) {
        return this.buf.getUnsigned(i);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer put(int i, byte b2) {
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
    public ByteBuffer put(ByteBuffer byteBuffer) {
        this.buf.put(byteBuffer);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer put(java.nio.ByteBuffer byteBuffer) {
        this.buf.put(byteBuffer);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer put(byte[] bArr, int i, int i2) {
        this.buf.put(bArr, i, i2);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer put(byte[] bArr) {
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
        return this.buf.equals(obj);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public int compareTo(ByteBuffer byteBuffer) {
        return this.buf.compareTo(byteBuffer);
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
        this.buf.putChar(c2);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public char getChar(int i) {
        return this.buf.getChar(i);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer putChar(int i, char c2) {
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
        return this.buf.getUnsignedShort();
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer putShort(short s) {
        this.buf.putShort(s);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public short getShort(int i) {
        return this.buf.getShort(i);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public int getUnsignedShort(int i) {
        return this.buf.getUnsignedShort(i);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer putShort(int i, short s) {
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
        return this.buf.getUnsignedInt();
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer putInt(int i) {
        this.buf.putInt(i);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public int getInt(int i) {
        return this.buf.getInt(i);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public long getUnsignedInt(int i) {
        return this.buf.getUnsignedInt(i);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer putInt(int i, int i2) {
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
        this.buf.putLong(j);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public long getLong(int i) {
        return this.buf.getLong(i);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer putLong(int i, long j) {
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
        this.buf.putFloat(f2);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public float getFloat(int i) {
        return this.buf.getFloat(i);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer putFloat(int i, float f2) {
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
        this.buf.putDouble(d2);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public double getDouble(int i) {
        return this.buf.getDouble(i);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer putDouble(int i, double d2) {
        this.buf.putDouble(i, d2);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public DoubleBuffer asDoubleBuffer() {
        return this.buf.asDoubleBuffer();
    }

    @Override // org.apache.mina.common.ByteBuffer
    public String getHexDump() {
        return this.buf.getHexDump();
    }

    @Override // org.apache.mina.common.ByteBuffer
    public String getString(int i, CharsetDecoder charsetDecoder) throws CharacterCodingException {
        return this.buf.getString(i, charsetDecoder);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public String getString(CharsetDecoder charsetDecoder) throws CharacterCodingException {
        return this.buf.getString(charsetDecoder);
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer putString(CharSequence charSequence, int i, CharsetEncoder charsetEncoder) throws CharacterCodingException {
        this.buf.putString(charSequence, i, charsetEncoder);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer putString(CharSequence charSequence, CharsetEncoder charsetEncoder) throws CharacterCodingException {
        this.buf.putString(charSequence, charsetEncoder);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer skip(int i) {
        this.buf.skip(i);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer fill(byte b2, int i) {
        this.buf.fill(b2, i);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer fillAndReset(byte b2, int i) {
        this.buf.fillAndReset(b2, i);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer fill(int i) {
        this.buf.fill(i);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer fillAndReset(int i) {
        this.buf.fillAndReset(i);
        return this;
    }

    @Override // org.apache.mina.common.ByteBuffer
    public boolean isAutoExpand() {
        return this.buf.isAutoExpand();
    }

    @Override // org.apache.mina.common.ByteBuffer
    public ByteBuffer setAutoExpand(boolean z) {
        this.buf.setAutoExpand(z);
        return this;
    }
}
