.class public Lorg/apache/commons/collections/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# static fields
.field public static final EMPTY_BUFFER:Lorg/apache/commons/collections/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/ArrayStack;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/buffer/UnmodifiableBuffer;->decorate(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/BufferUtils;->EMPTY_BUFFER:Lorg/apache/commons/collections/Buffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockingBuffer(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;
    .locals 0

    .line 123
    invoke-static {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->decorate(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static predicatedBuffer(Lorg/apache/commons/collections/Buffer;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Buffer;
    .locals 0

    .line 150
    invoke-static {p0, p1}, Lorg/apache/commons/collections/buffer/PredicatedBuffer;->decorate(Lorg/apache/commons/collections/Buffer;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedBuffer(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;
    .locals 0

    .line 107
    invoke-static {p0}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;->decorate(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static transformedBuffer(Lorg/apache/commons/collections/Buffer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Buffer;
    .locals 0

    .line 180
    invoke-static {p0, p1}, Lorg/apache/commons/collections/buffer/TransformedBuffer;->decorate(Lorg/apache/commons/collections/Buffer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static typedBuffer(Lorg/apache/commons/collections/Buffer;Ljava/lang/Class;)Lorg/apache/commons/collections/Buffer;
    .locals 0

    .line 164
    invoke-static {p0, p1}, Lorg/apache/commons/collections/buffer/TypedBuffer;->decorate(Lorg/apache/commons/collections/Buffer;Ljava/lang/Class;)Lorg/apache/commons/collections/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableBuffer(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;
    .locals 0

    .line 134
    invoke-static {p0}, Lorg/apache/commons/collections/buffer/UnmodifiableBuffer;->decorate(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;

    move-result-object p0

    return-object p0
.end method
