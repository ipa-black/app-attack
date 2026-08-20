package org.apache.asn1.ber.digester;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.asn1.ber.BERDecoder;
import org.apache.asn1.ber.BERDecoderCallback;
import org.apache.asn1.ber.Tuple;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.stateful.AbstractStatefulDecoder;
import org.apache.asn1.codec.stateful.StatefulDecoder;
import org.apache.commons.collections.ArrayStack;
import org.apache.commons.collections.primitives.BooleanStack;
import org.apache.commons.collections.primitives.ByteStack;
import org.apache.commons.collections.primitives.CharStack;
import org.apache.commons.collections.primitives.DoubleStack;
import org.apache.commons.collections.primitives.FloatStack;
import org.apache.commons.collections.primitives.IntStack;
import org.apache.commons.collections.primitives.LongStack;
import org.apache.commons.collections.primitives.ShortStack;
/* loaded from: classes5.dex */
public class BERDigester extends AbstractStatefulDecoder {
    public static final int NO_TOP_TAG = 251658240;
    private BooleanStack booleanStack;
    private ByteStack byteStack;
    private CharStack charStack;
    private BERDecoder decoder;
    private DoubleStack doubleStack;
    private FloatStack floatStack;
    private IntStack intStack;
    private LongStack longStack;
    private List matched;
    private BERDigesterMonitor monitor;
    private ArrayStack objectStack;
    private Rules rules;
    private ShortStack shortStack;
    private IntStack tagStack;
    private ClassLoader classLoader = null;
    private boolean useContextClassLoader = false;
    private Object root = null;

    public BERDigester() {
        this.monitor = null;
        RulesBase rulesBase = new RulesBase();
        this.rules = rulesBase;
        rulesBase.setDigester(this);
        this.tagStack = new IntStack();
        this.objectStack = new ArrayStack();
        this.booleanStack = new BooleanStack();
        this.charStack = new CharStack();
        this.byteStack = new ByteStack();
        this.shortStack = new ShortStack();
        this.intStack = new IntStack();
        this.longStack = new LongStack();
        this.floatStack = new FloatStack();
        this.doubleStack = new DoubleStack();
        BERDecoder bERDecoder = new BERDecoder();
        this.decoder = bERDecoder;
        bERDecoder.setCallback(new DigesterCallback());
        this.monitor = new BERDigesterLoggingMonitor();
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void decode(Object obj) throws DecoderException {
        this.decoder.decode(obj);
    }

    /* loaded from: classes5.dex */
    class DigesterCallback implements BERDecoderCallback {
        DigesterCallback() {
        }

        @Override // org.apache.asn1.ber.BERDecoderCallback
        public void tagDecoded(Tuple tuple) {
            BERDigester.this.tagStack.push(tuple.getRawPrimitiveTag());
            BERDigester bERDigester = BERDigester.this;
            bERDigester.matched = bERDigester.rules.match(BERDigester.this.tagStack);
            BERDigester.this.fireTagEvent(tuple.getId(), tuple.isPrimitive(), tuple.getTypeClass());
        }

        @Override // org.apache.asn1.ber.BERDecoderCallback
        public void lengthDecoded(Tuple tuple) {
            BERDigester.this.fireLengthEvent(tuple.getLength());
        }

        @Override // org.apache.asn1.ber.BERDecoderCallback
        public void partialValueDecoded(Tuple tuple) {
            BERDigester.this.fireValueEvent(tuple.getLastValueChunk());
        }

        @Override // org.apache.asn1.codec.stateful.DecoderCallback
        public void decodeOccurred(StatefulDecoder statefulDecoder, Object obj) {
            BERDigester bERDigester = BERDigester.this;
            bERDigester.matched = bERDigester.rules.match(BERDigester.this.tagStack);
            BERDigester.this.fireFinishEvent();
            BERDigester.this.tagStack.pop();
            if (BERDigester.this.tagStack.empty()) {
                BERDigester bERDigester2 = BERDigester.this;
                bERDigester2.decodeOccurred(bERDigester2.getRoot());
            }
        }
    }

    public void addRule(int[] iArr, Rule rule) {
        this.rules.add(iArr, rule);
        rule.setDigester(this);
    }

    public Rules getRules() {
        return this.rules;
    }

    public void clear() {
        this.root = null;
        this.tagStack.clear();
        this.objectStack.clear();
        this.booleanStack.clear();
        this.byteStack.clear();
        this.shortStack.clear();
        this.intStack.clear();
        this.longStack.clear();
        this.floatStack.clear();
        this.doubleStack.clear();
    }

    public int getCount() {
        return this.objectStack.size();
    }

    public Object peek() {
        return this.objectStack.peek();
    }

    public Object peek(int i) {
        return this.objectStack.peek(i);
    }

    public Object pop() {
        return this.objectStack.pop();
    }

    public void push(Object obj) {
        if (this.objectStack.size() == 0) {
            this.root = obj;
        }
        this.objectStack.push(obj);
    }

    public int getBooleanCount() {
        return this.booleanStack.size();
    }

    public boolean peekBoolean() {
        return this.booleanStack.peek();
    }

    public boolean peekBoolean(int i) {
        return this.booleanStack.peek(i);
    }

    public boolean popBoolean() {
        return this.booleanStack.pop();
    }

    public void pushBoolean(boolean z) {
        this.booleanStack.push(z);
    }

    public int getCharCount() {
        return this.charStack.size();
    }

    public char peekChar() {
        return this.charStack.peek();
    }

    public char peekChar(int i) {
        return this.charStack.peek(i);
    }

    public char popChar() {
        return this.charStack.pop();
    }

    public void pushChar(char c2) {
        this.charStack.push(c2);
    }

    public int getByteCount() {
        return this.byteStack.size();
    }

    public byte peekByte() {
        return this.byteStack.peek();
    }

    public byte peekByte(int i) {
        return this.byteStack.peek(i);
    }

    public byte popByte() {
        return this.byteStack.pop();
    }

    public void pushByte(byte b2) {
        this.byteStack.push(b2);
    }

    public int getShortCount() {
        return this.shortStack.size();
    }

    public short peekShort() {
        return this.shortStack.peek();
    }

    public short peekShort(int i) {
        return this.shortStack.peek(i);
    }

    public short popShort() {
        return this.shortStack.pop();
    }

    public void pushShort(short s) {
        this.shortStack.push(s);
    }

    public int getIntCount() {
        return this.intStack.size();
    }

    public int peekInt() {
        return this.intStack.peek();
    }

    public int peekInt(int i) {
        return this.intStack.peek(i);
    }

    public int popInt() {
        return this.intStack.pop();
    }

    public void pushInt(int i) {
        this.intStack.push(i);
    }

    public int getLongCount() {
        return this.longStack.size();
    }

    public long peekLong() {
        return this.longStack.peek();
    }

    public long peekLong(int i) {
        return this.longStack.peek(i);
    }

    public long popLong() {
        return this.longStack.pop();
    }

    public void pushLong(long j) {
        this.longStack.push(j);
    }

    public int getFloatCount() {
        return this.floatStack.size();
    }

    public float peekFloat() {
        return this.floatStack.peek();
    }

    public float peekFloat(int i) {
        return this.floatStack.peek(i);
    }

    public float popFloat() {
        return this.floatStack.pop();
    }

    public void pushFloat(float f2) {
        this.floatStack.push(f2);
    }

    public int getDoubleCount() {
        return this.doubleStack.size();
    }

    public double peekDouble() {
        return this.doubleStack.peek();
    }

    public double peekDouble(int i) {
        return this.doubleStack.peek(i);
    }

    public double popDouble() {
        return this.doubleStack.pop();
    }

    public void pushDouble(double d2) {
        this.doubleStack.push(d2);
    }

    public Object getRoot() {
        return this.root;
    }

    public void setRules(Rules rules) {
        this.rules = rules;
        rules.setDigester(this);
    }

    public int getTagCount() {
        return this.tagStack.size();
    }

    public int getTag(int i) {
        return this.tagStack.peek(i);
    }

    public int getTopTag() {
        return this.tagStack.size() <= 0 ? NO_TOP_TAG : this.tagStack.peek();
    }

    public ClassLoader getClassLoader() {
        ClassLoader contextClassLoader;
        ClassLoader classLoader = this.classLoader;
        return classLoader != null ? classLoader : (!this.useContextClassLoader || (contextClassLoader = Thread.currentThread().getContextClassLoader()) == null) ? getClass().getClassLoader() : contextClassLoader;
    }

    public void setClassLoader(ClassLoader classLoader) {
        this.classLoader = classLoader;
    }

    public boolean getUseContextClassLoader() {
        return this.useContextClassLoader;
    }

    public void setUseContextClassLoader(boolean z) {
        this.useContextClassLoader = z;
    }

    void fireTagEvent(int i, boolean z, TypeClass typeClass) {
        Iterator it;
        List list = this.matched;
        if (list == null) {
            it = Collections.EMPTY_LIST.iterator();
        } else {
            it = list.iterator();
        }
        while (it.hasNext()) {
            Rule rule = (Rule) it.next();
            try {
                rule.tag(i, z, typeClass);
            } catch (Error e2) {
                this.monitor.ruleFailed(this, rule, "Rule.tag() threw error", e2);
                throw e2;
            } catch (RuntimeException e3) {
                this.monitor.ruleFailed(this, rule, "Rule.tag() threw exception", e3);
                throw e3;
            }
        }
    }

    void fireLengthEvent(int i) {
        Iterator it;
        List list = this.matched;
        if (list == null) {
            it = Collections.EMPTY_LIST.iterator();
        } else {
            it = list.iterator();
        }
        while (it.hasNext()) {
            Rule rule = (Rule) it.next();
            try {
                rule.length(i);
            } catch (Error e2) {
                this.monitor.ruleFailed(this, rule, "Rule.length() threw error", e2);
                throw e2;
            } catch (RuntimeException e3) {
                this.monitor.ruleFailed(this, rule, "Rule.length() threw exception", e3);
                throw e3;
            }
        }
    }

    void fireValueEvent(ByteBuffer byteBuffer) {
        Iterator it;
        List list = this.matched;
        if (list == null) {
            it = Collections.EMPTY_LIST.iterator();
        } else {
            it = list.iterator();
        }
        while (it.hasNext()) {
            Rule rule = (Rule) it.next();
            try {
                rule.value(byteBuffer);
                byteBuffer.rewind();
            } catch (Error e2) {
                this.monitor.ruleFailed(this, rule, "Rule.value() threw exception", e2);
                throw e2;
            } catch (RuntimeException e3) {
                this.monitor.ruleFailed(this, rule, "Rule.value() threw exception", e3);
                throw e3;
            }
        }
    }

    void fireFinishEvent() {
        Rule rule;
        if (this.matched != null) {
            HashSet hashSet = new HashSet();
            Rule rule2 = null;
            int i = 0;
            while (i < this.matched.size()) {
                try {
                    rule = (Rule) this.matched.get(i);
                } catch (Error e2) {
                    e = e2;
                } catch (RuntimeException e3) {
                    e = e3;
                }
                try {
                    rule.finish();
                    this.monitor.ruleCompleted(this, rule);
                    hashSet.add(rule);
                    i++;
                    rule2 = rule;
                } catch (Error e4) {
                    e = e4;
                    rule2 = rule;
                    this.monitor.ruleFailed(this, rule2, "Rule.finish() threw error", e);
                    throw e;
                } catch (RuntimeException e5) {
                    e = e5;
                    rule2 = rule;
                    this.monitor.ruleFailed(this, rule2, "Rule.finish() threw exception", e);
                    throw e;
                }
            }
        }
    }
}
