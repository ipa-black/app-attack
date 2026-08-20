package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleUnaryOperator;
@ElementTypesAreNonnullByDefault
/* loaded from: classes4.dex */
public class AtomicDouble extends Number implements Serializable {
    private static final long serialVersionUID = 0;
    private static final AtomicLongFieldUpdater<AtomicDouble> updater = AtomicLongFieldUpdater.newUpdater(AtomicDouble.class, "value");
    private volatile transient long value;

    public AtomicDouble(double d2) {
        this.value = Double.doubleToRawLongBits(d2);
    }

    public AtomicDouble() {
    }

    public final double get() {
        return Double.longBitsToDouble(this.value);
    }

    public final void set(double d2) {
        this.value = Double.doubleToRawLongBits(d2);
    }

    public final void lazySet(double d2) {
        updater.lazySet(this, Double.doubleToRawLongBits(d2));
    }

    public final double getAndSet(double d2) {
        return Double.longBitsToDouble(updater.getAndSet(this, Double.doubleToRawLongBits(d2)));
    }

    public final boolean compareAndSet(double d2, double d3) {
        return updater.compareAndSet(this, Double.doubleToRawLongBits(d2), Double.doubleToRawLongBits(d3));
    }

    public final boolean weakCompareAndSet(double d2, double d3) {
        return updater.weakCompareAndSet(this, Double.doubleToRawLongBits(d2), Double.doubleToRawLongBits(d3));
    }

    public final double getAndAdd(double d2) {
        return getAndAccumulate(d2, new AtomicDouble$$ExternalSyntheticLambda0());
    }

    public final double addAndGet(double d2) {
        return accumulateAndGet(d2, new AtomicDouble$$ExternalSyntheticLambda0());
    }

    public final double getAndAccumulate(final double d2, final DoubleBinaryOperator doubleBinaryOperator) {
        Preconditions.checkNotNull(doubleBinaryOperator);
        return getAndUpdate(new DoubleUnaryOperator() { // from class: com.google.common.util.concurrent.AtomicDouble$$ExternalSyntheticLambda1
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d3) {
                double applyAsDouble;
                applyAsDouble = doubleBinaryOperator.applyAsDouble(d3, d2);
                return applyAsDouble;
            }
        });
    }

    public final double accumulateAndGet(final double d2, final DoubleBinaryOperator doubleBinaryOperator) {
        Preconditions.checkNotNull(doubleBinaryOperator);
        return updateAndGet(new DoubleUnaryOperator() { // from class: com.google.common.util.concurrent.AtomicDouble$$ExternalSyntheticLambda2
            @Override // java.util.function.DoubleUnaryOperator
            public final double applyAsDouble(double d3) {
                double applyAsDouble;
                applyAsDouble = doubleBinaryOperator.applyAsDouble(d3, d2);
                return applyAsDouble;
            }
        });
    }

    public final double getAndUpdate(DoubleUnaryOperator doubleUnaryOperator) {
        long j;
        double longBitsToDouble;
        do {
            j = this.value;
            longBitsToDouble = Double.longBitsToDouble(j);
        } while (!updater.compareAndSet(this, j, Double.doubleToRawLongBits(doubleUnaryOperator.applyAsDouble(longBitsToDouble))));
        return longBitsToDouble;
    }

    public final double updateAndGet(DoubleUnaryOperator doubleUnaryOperator) {
        long j;
        double applyAsDouble;
        do {
            j = this.value;
            applyAsDouble = doubleUnaryOperator.applyAsDouble(Double.longBitsToDouble(j));
        } while (!updater.compareAndSet(this, j, Double.doubleToRawLongBits(applyAsDouble)));
        return applyAsDouble;
    }

    public String toString() {
        return Double.toString(get());
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) get();
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) get();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) get();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return get();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(get());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        set(objectInputStream.readDouble());
    }
}
