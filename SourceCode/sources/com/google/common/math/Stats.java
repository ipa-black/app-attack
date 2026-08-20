package com.google.common.math;

import com.applovin.sdk.AppLovinMediationProvider;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;
import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import javax.annotation.CheckForNull;
@ElementTypesAreNonnullByDefault
/* loaded from: classes4.dex */
public final class Stats implements Serializable {
    static final int BYTES = 40;
    private static final long serialVersionUID = 0;
    private final long count;
    private final double max;
    private final double mean;
    private final double min;
    private final double sumOfSquaresOfDeltas;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Stats(long j, double d2, double d3, double d4, double d5) {
        this.count = j;
        this.mean = d2;
        this.sumOfSquaresOfDeltas = d3;
        this.min = d4;
        this.max = d5;
    }

    public static Stats of(Iterable<? extends Number> iterable) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(iterable);
        return statsAccumulator.snapshot();
    }

    public static Stats of(Iterator<? extends Number> it) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(it);
        return statsAccumulator.snapshot();
    }

    public static Stats of(double... dArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(dArr);
        return statsAccumulator.snapshot();
    }

    public static Stats of(int... iArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(iArr);
        return statsAccumulator.snapshot();
    }

    public static Stats of(long... jArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(jArr);
        return statsAccumulator.snapshot();
    }

    public static Stats of(DoubleStream doubleStream) {
        return ((StatsAccumulator) doubleStream.collect(new Stats$$ExternalSyntheticLambda0(), new Stats$$ExternalSyntheticLambda4(), new Stats$$ExternalSyntheticLambda2())).snapshot();
    }

    public static Stats of(IntStream intStream) {
        return ((StatsAccumulator) intStream.collect(new Stats$$ExternalSyntheticLambda0(), new Stats$$ExternalSyntheticLambda3(), new Stats$$ExternalSyntheticLambda2())).snapshot();
    }

    public static Stats of(LongStream longStream) {
        return ((StatsAccumulator) longStream.collect(new Stats$$ExternalSyntheticLambda0(), new Stats$$ExternalSyntheticLambda1(), new Stats$$ExternalSyntheticLambda2())).snapshot();
    }

    public static Collector<Number, StatsAccumulator, Stats> toStats() {
        return Collector.of(new Stats$$ExternalSyntheticLambda0(), new BiConsumer() { // from class: com.google.common.math.Stats$$ExternalSyntheticLambda5
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((StatsAccumulator) obj).add(((Number) obj2).doubleValue());
            }
        }, new BinaryOperator() { // from class: com.google.common.math.Stats$$ExternalSyntheticLambda6
            /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
                jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.common.math.Stats.lambda$toStats$1(com.google.common.math.StatsAccumulator, com.google.common.math.StatsAccumulator):com.google.common.math.StatsAccumulator
                	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
                	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
                Caused by: java.lang.NullPointerException
                */
            @Override // java.util.function.BiFunction
            public final java.lang.Object apply(java.lang.Object r1, java.lang.Object r2) {
                /*
                    r0 = this;
                    com.google.common.math.StatsAccumulator r1 = (com.google.common.math.StatsAccumulator) r1
                    com.google.common.math.StatsAccumulator r2 = (com.google.common.math.StatsAccumulator) r2
                    com.google.common.math.StatsAccumulator r1 = com.google.common.math.Stats.lambda$toStats$1(r1, r2)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.Stats$$ExternalSyntheticLambda6.apply(java.lang.Object, java.lang.Object):java.lang.Object");
            }
        }, new Function() { // from class: com.google.common.math.Stats$$ExternalSyntheticLambda7
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((StatsAccumulator) obj).snapshot();
            }
        }, Collector.Characteristics.UNORDERED);
    }

    /*  JADX ERROR: NullPointerException in pass: MarkMethodsForInline
        java.lang.NullPointerException
        */
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ com.google.common.math.StatsAccumulator lambda$toStats$1(com.google.common.math.StatsAccumulator r0, com.google.common.math.StatsAccumulator r1) {
        /*
            r0.addAll(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.Stats.lambda$toStats$1(com.google.common.math.StatsAccumulator, com.google.common.math.StatsAccumulator):com.google.common.math.StatsAccumulator");
    }

    public long count() {
        return this.count;
    }

    public double mean() {
        Preconditions.checkState(this.count != 0);
        return this.mean;
    }

    public double sum() {
        return this.mean * this.count;
    }

    public double populationVariance() {
        Preconditions.checkState(this.count > 0);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        if (this.count == 1) {
            return 0.0d;
        }
        return DoubleUtils.ensureNonNegative(this.sumOfSquaresOfDeltas) / count();
    }

    public double populationStandardDeviation() {
        return Math.sqrt(populationVariance());
    }

    public double sampleVariance() {
        Preconditions.checkState(this.count > 1);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        return DoubleUtils.ensureNonNegative(this.sumOfSquaresOfDeltas) / (this.count - 1);
    }

    public double sampleStandardDeviation() {
        return Math.sqrt(sampleVariance());
    }

    public double min() {
        Preconditions.checkState(this.count != 0);
        return this.min;
    }

    public double max() {
        Preconditions.checkState(this.count != 0);
        return this.max;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj != null && getClass() == obj.getClass()) {
            Stats stats = (Stats) obj;
            return this.count == stats.count && Double.doubleToLongBits(this.mean) == Double.doubleToLongBits(stats.mean) && Double.doubleToLongBits(this.sumOfSquaresOfDeltas) == Double.doubleToLongBits(stats.sumOfSquaresOfDeltas) && Double.doubleToLongBits(this.min) == Double.doubleToLongBits(stats.min) && Double.doubleToLongBits(this.max) == Double.doubleToLongBits(stats.max);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.count), Double.valueOf(this.mean), Double.valueOf(this.sumOfSquaresOfDeltas), Double.valueOf(this.min), Double.valueOf(this.max));
    }

    public String toString() {
        if (count() > 0) {
            return MoreObjects.toStringHelper(this).add(NewHtcHomeBadger.COUNT, this.count).add("mean", this.mean).add("populationStandardDeviation", populationStandardDeviation()).add("min", this.min).add(AppLovinMediationProvider.MAX, this.max).toString();
        }
        return MoreObjects.toStringHelper(this).add(NewHtcHomeBadger.COUNT, this.count).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double sumOfSquaresOfDeltas() {
        return this.sumOfSquaresOfDeltas;
    }

    public static double meanOf(Iterable<? extends Number> iterable) {
        return meanOf(iterable.iterator());
    }

    public static double meanOf(Iterator<? extends Number> it) {
        Preconditions.checkArgument(it.hasNext());
        double doubleValue = it.next().doubleValue();
        long j = 1;
        while (it.hasNext()) {
            double doubleValue2 = it.next().doubleValue();
            j++;
            doubleValue = (Doubles.isFinite(doubleValue2) && Doubles.isFinite(doubleValue)) ? doubleValue + ((doubleValue2 - doubleValue) / j) : StatsAccumulator.calculateNewMeanNonFinite(doubleValue, doubleValue2);
        }
        return doubleValue;
    }

    public static double meanOf(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0);
        double d2 = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            double d3 = dArr[i];
            d2 = (Doubles.isFinite(d3) && Doubles.isFinite(d2)) ? d2 + ((d3 - d2) / (i + 1)) : StatsAccumulator.calculateNewMeanNonFinite(d2, d3);
        }
        return d2;
    }

    public static double meanOf(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        double d2 = iArr[0];
        for (int i = 1; i < iArr.length; i++) {
            double d3 = iArr[i];
            d2 = (Doubles.isFinite(d3) && Doubles.isFinite(d2)) ? d2 + ((d3 - d2) / (i + 1)) : StatsAccumulator.calculateNewMeanNonFinite(d2, d3);
        }
        return d2;
    }

    public static double meanOf(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        double d2 = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            double d3 = jArr[i];
            d2 = (Doubles.isFinite(d3) && Doubles.isFinite(d2)) ? d2 + ((d3 - d2) / (i + 1)) : StatsAccumulator.calculateNewMeanNonFinite(d2, d3);
        }
        return d2;
    }

    public byte[] toByteArray() {
        ByteBuffer order = ByteBuffer.allocate(40).order(ByteOrder.LITTLE_ENDIAN);
        writeTo(order);
        return order.array();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeTo(ByteBuffer byteBuffer) {
        Preconditions.checkNotNull(byteBuffer);
        Preconditions.checkArgument(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        byteBuffer.putLong(this.count).putDouble(this.mean).putDouble(this.sumOfSquaresOfDeltas).putDouble(this.min).putDouble(this.max);
    }

    public static Stats fromByteArray(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgument(bArr.length == 40, "Expected Stats.BYTES = %s remaining , got %s", 40, bArr.length);
        return readFrom(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Stats readFrom(ByteBuffer byteBuffer) {
        Preconditions.checkNotNull(byteBuffer);
        Preconditions.checkArgument(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        return new Stats(byteBuffer.getLong(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble());
    }
}
