.class public Lorg/apache/asn1/ber/BERDecoder;
.super Ljava/lang/Object;
.source "BERDecoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/StatefulDecoder;
.implements Lorg/apache/asn1/codec/stateful/DecoderCallback;


# static fields
.field private static final DEFAULT_CALLBACK:Lorg/apache/asn1/ber/BERDecoderCallback;

.field private static final DEFAULT_MONITOR:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private cb:Lorg/apache/asn1/ber/BERDecoderCallback;

.field private final lengthDecoder:Lorg/apache/asn1/ber/LengthDecoder;

.field private monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

.field private state:Lorg/apache/asn1/ber/BERDecoderState;

.field private final tagDecoder:Lorg/apache/asn1/ber/TagDecoder;

.field private final tlv:Lorg/apache/asn1/ber/Tuple;

.field private final tlvStack:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/asn1/ber/BERDecoder;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 70
    new-instance v0, Lorg/apache/asn1/ber/BERDecoderCallbackAdapter;

    invoke-direct {v0}, Lorg/apache/asn1/ber/BERDecoderCallbackAdapter;-><init>()V

    sput-object v0, Lorg/apache/asn1/ber/BERDecoder;->DEFAULT_CALLBACK:Lorg/apache/asn1/ber/BERDecoderCallback;

    .line 73
    new-instance v0, Lorg/apache/asn1/codec/stateful/DecoderMonitorAdapter;

    invoke-direct {v0}, Lorg/apache/asn1/codec/stateful/DecoderMonitorAdapter;-><init>()V

    sput-object v0, Lorg/apache/asn1/ber/BERDecoder;->DEFAULT_MONITOR:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lorg/apache/asn1/ber/BERDecoder;->DEFAULT_CALLBACK:Lorg/apache/asn1/ber/BERDecoderCallback;

    iput-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->cb:Lorg/apache/asn1/ber/BERDecoderCallback;

    .line 79
    sget-object v0, Lorg/apache/asn1/ber/BERDecoder;->DEFAULT_MONITOR:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    iput-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    .line 82
    new-instance v0, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v0}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    .line 85
    new-instance v0, Lorg/apache/asn1/ber/TagDecoder;

    invoke-direct {v0}, Lorg/apache/asn1/ber/TagDecoder;-><init>()V

    iput-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tagDecoder:Lorg/apache/asn1/ber/TagDecoder;

    .line 87
    new-instance v1, Lorg/apache/asn1/ber/LengthDecoder;

    invoke-direct {v1}, Lorg/apache/asn1/ber/LengthDecoder;-><init>()V

    iput-object v1, p0, Lorg/apache/asn1/ber/BERDecoder;->lengthDecoder:Lorg/apache/asn1/ber/LengthDecoder;

    .line 90
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/asn1/ber/BERDecoder;->tlvStack:Ljava/util/Stack;

    .line 93
    invoke-static {}, Lorg/apache/asn1/ber/BERDecoderState;->getStartState()Lorg/apache/asn1/ber/BERDecoderState;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    .line 101
    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/TagDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    .line 102
    invoke-virtual {v1, p0}, Lorg/apache/asn1/ber/LengthDecoder;->setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V

    return-void
.end method

.method private decodeValue(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget v0, v0, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget v0, v0, Lorg/apache/asn1/ber/Tuple;->length:I

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget v0, v0, Lorg/apache/asn1/ber/Tuple;->length:I

    iget-object v2, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget v2, v2, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    sub-int/2addr v0, v2

    .line 218
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 220
    iget-object v1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iput-object v2, v1, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget v1, p1, Lorg/apache/asn1/ber/Tuple;->length:I

    iput v1, p1, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    .line 223
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget v1, p1, Lorg/apache/asn1/ber/Tuple;->index:I

    iget-object v2, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget v2, v2, Lorg/apache/asn1/ber/Tuple;->length:I

    add-int/2addr v1, v2

    iput v1, p1, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 225
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->cb:Lorg/apache/asn1/ber/BERDecoderCallback;

    iget-object v1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-interface {p1, v1}, Lorg/apache/asn1/ber/BERDecoderCallback;->partialValueDecoded(Lorg/apache/asn1/ber/Tuple;)V

    .line 226
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/BERDecoder;->fireDecodeOccurred(Lorg/apache/asn1/ber/Tuple;)V

    .line 227
    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/BERDecoder;->updateStack(I)V

    .line 228
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->clear()V

    .line 229
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    iput-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    goto :goto_1

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget v0, v0, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    if-ne v0, v1, :cond_2

    .line 241
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    .line 244
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 245
    iget-object v1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    .line 246
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 247
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget v1, p1, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    add-int/2addr v1, v0

    iput v1, p1, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    .line 248
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget v1, p1, Lorg/apache/asn1/ber/Tuple;->index:I

    add-int/2addr v1, v0

    iput v1, p1, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 250
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->cb:Lorg/apache/asn1/ber/BERDecoderCallback;

    iget-object v1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-interface {p1, v1}, Lorg/apache/asn1/ber/BERDecoderCallback;->partialValueDecoded(Lorg/apache/asn1/ber/Tuple;)V

    .line 251
    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/BERDecoder;->updateStack(I)V

    :goto_1
    return-void
.end method

.method private fireDecodeOccurred(Lorg/apache/asn1/ber/Tuple;)V
    .locals 2

    .line 397
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->cb:Lorg/apache/asn1/ber/BERDecoderCallback;

    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v0, p0, p1}, Lorg/apache/asn1/ber/BERDecoderCallback;->decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    if-eqz v0, :cond_1

    .line 404
    iget-object v1, p0, Lorg/apache/asn1/ber/BERDecoder;->cb:Lorg/apache/asn1/ber/BERDecoderCallback;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/asn1/codec/stateful/DecoderMonitor;->callbackOccured(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Lorg/apache/asn1/codec/stateful/DecoderCallback;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private fireLengthDecoded()V
    .locals 2

    .line 378
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->cb:Lorg/apache/asn1/ber/BERDecoderCallback;

    if-eqz v0, :cond_0

    .line 380
    iget-object v1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-interface {v0, v1}, Lorg/apache/asn1/ber/BERDecoderCallback;->lengthDecoded(Lorg/apache/asn1/ber/Tuple;)V

    .line 383
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/apache/asn1/ber/BERDecoderMonitor;

    if-eqz v1, :cond_1

    .line 385
    check-cast v0, Lorg/apache/asn1/ber/BERDecoderMonitor;

    .line 386
    iget-object v1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-interface {v0, v1}, Lorg/apache/asn1/ber/BERDecoderMonitor;->lengthDecoded(Lorg/apache/asn1/ber/Tuple;)V

    :cond_1
    return-void
.end method

.method private fireTagDecoded()V
    .locals 2

    .line 355
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->cb:Lorg/apache/asn1/ber/BERDecoderCallback;

    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-interface {v0, v1}, Lorg/apache/asn1/ber/BERDecoderCallback;->tagDecoded(Lorg/apache/asn1/ber/Tuple;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/apache/asn1/ber/BERDecoderMonitor;

    if-eqz v1, :cond_1

    .line 362
    check-cast v0, Lorg/apache/asn1/ber/BERDecoderMonitor;

    .line 363
    iget-object v1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-interface {v0, v1}, Lorg/apache/asn1/ber/BERDecoderMonitor;->tagDecoded(Lorg/apache/asn1/ber/Tuple;)V

    :cond_1
    return-void
.end method

.method private updateStack(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 416
    :goto_0
    iget-object v2, p0, Lorg/apache/asn1/ber/BERDecoder;->tlvStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 418
    iget-object v2, p0, Lorg/apache/asn1/ber/BERDecoder;->tlvStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/Tuple;

    .line 420
    invoke-virtual {v2}, Lorg/apache/asn1/ber/Tuple;->isIndefinite()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 425
    :cond_0
    iget v3, v2, Lorg/apache/asn1/ber/Tuple;->index:I

    add-int/2addr v3, p1

    iput v3, v2, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 427
    iget v3, v2, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 429
    iput v0, v2, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    .line 432
    :cond_1
    iget v3, v2, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    add-int/2addr v3, p1

    iput v3, v2, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_2
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlvStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 442
    :cond_3
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlvStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/Tuple;

    .line 444
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isIndefinite()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->isIndefiniteTerminator()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tlvStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 447
    sget-object v0, Lorg/apache/asn1/ber/BERDecoderState;->VALUE:Lorg/apache/asn1/ber/BERDecoderState;

    iput-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    .line 448
    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/BERDecoder;->fireDecodeOccurred(Lorg/apache/asn1/ber/Tuple;)V

    .line 449
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    iput-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    goto :goto_2

    .line 452
    :cond_4
    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isIndefinite()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 456
    :cond_5
    iget v0, p1, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    iget v1, p1, Lorg/apache/asn1/ber/Tuple;->length:I

    if-lt v0, v1, :cond_6

    .line 458
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tlvStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 459
    sget-object v0, Lorg/apache/asn1/ber/BERDecoderState;->VALUE:Lorg/apache/asn1/ber/BERDecoderState;

    iput-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    .line 460
    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/BERDecoder;->fireDecodeOccurred(Lorg/apache/asn1/ber/Tuple;)V

    .line 461
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    iput-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    .line 468
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlvStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-gtz p1, :cond_3

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/asn1/codec/DecoderException;
        }
    .end annotation

    .line 121
    check-cast p1, Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    .line 127
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    if-eqz v0, :cond_0

    .line 130
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "ignoring null argument to decode()"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, p1}, Lorg/apache/asn1/codec/stateful/DecoderMonitor;->warning(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V

    return-void

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    if-eqz v0, :cond_1

    .line 137
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "ignoring empty buffer"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, p1}, Lorg/apache/asn1/codec/stateful/DecoderMonitor;->warning(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Exception;)V

    return-void

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/BERDecoderState;->getValue()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/BERDecoder;->decodeValue(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->lengthDecoder:Lorg/apache/asn1/ber/LengthDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/LengthDecoder;->decode(Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_4
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tagDecoder:Lorg/apache/asn1/ber/TagDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/TagDecoder;->decode(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tagDecoder:Lorg/apache/asn1/ber/TagDecoder;

    if-ne p1, v0, :cond_1

    .line 265
    check-cast p2, Lorg/apache/asn1/ber/Tag;

    .line 266
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/Tag;->getRawTag()I

    move-result v0

    iput v0, p1, Lorg/apache/asn1/ber/Tuple;->rawTag:I

    .line 267
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/Tag;->getId()I

    move-result v0

    iput v0, p1, Lorg/apache/asn1/ber/Tuple;->id:I

    .line 268
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/Tag;->isPrimitive()Z

    move-result v0

    iput-boolean v0, p1, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    .line 269
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/Tag;->getTypeClass()Lorg/apache/asn1/ber/TypeClass;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/asn1/ber/Tuple;->typeClass:Lorg/apache/asn1/ber/TypeClass;

    .line 270
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/Tag;->size()I

    move-result v0

    iput v0, p1, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 272
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isIndefiniteTerminator()Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    invoke-direct {p0}, Lorg/apache/asn1/ber/BERDecoder;->fireTagDecoded()V

    .line 275
    invoke-virtual {p2}, Lorg/apache/asn1/ber/Tag;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/BERDecoder;->updateStack(I)V

    .line 278
    :cond_0
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/Tag;->isPrimitive()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/asn1/ber/BERDecoderState;->getNext(Z)Lorg/apache/asn1/ber/BERDecoderState;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    goto/16 :goto_3

    .line 280
    :cond_1
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->lengthDecoder:Lorg/apache/asn1/ber/LengthDecoder;

    if-ne p1, v0, :cond_9

    .line 282
    check-cast p2, Lorg/apache/asn1/ber/Length;

    .line 283
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/Length;->getLength()I

    move-result v0

    iput v0, p1, Lorg/apache/asn1/ber/Tuple;->length:I

    .line 285
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget p1, p1, Lorg/apache/asn1/ber/Tuple;->length:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 287
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iput v0, p1, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 288
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iput v0, p1, Lorg/apache/asn1/ber/Tuple;->valueIndex:I

    goto :goto_0

    .line 292
    :cond_2
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget v0, p1, Lorg/apache/asn1/ber/Tuple;->index:I

    invoke-virtual {p2}, Lorg/apache/asn1/ber/Length;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lorg/apache/asn1/ber/Tuple;->index:I

    .line 295
    :goto_0
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isIndefiniteTerminator()Z

    move-result p1

    if-nez p1, :cond_3

    .line 297
    invoke-direct {p0}, Lorg/apache/asn1/ber/BERDecoder;->fireLengthDecoded()V

    .line 299
    :cond_3
    invoke-virtual {p2}, Lorg/apache/asn1/ber/Length;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/BERDecoder;->updateStack(I)V

    .line 301
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget-boolean p1, p1, Lorg/apache/asn1/ber/Tuple;->isPrimitive:Z

    if-nez p1, :cond_6

    .line 303
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isIndefinite()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget p1, p1, Lorg/apache/asn1/ber/Tuple;->length:I

    if-lez p1, :cond_4

    goto :goto_1

    .line 309
    :cond_4
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->VALUE:Lorg/apache/asn1/ber/BERDecoderState;

    iput-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    .line 310
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/BERDecoder;->fireDecodeOccurred(Lorg/apache/asn1/ber/Tuple;)V

    goto :goto_2

    .line 305
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlvStack:Ljava/util/Stack;

    iget-object p2, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p2}, Lorg/apache/asn1/ber/Tuple;->clone()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :goto_2
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    iput-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    .line 314
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->clear()V

    goto :goto_3

    .line 316
    :cond_6
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isIndefiniteTerminator()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 320
    :cond_7
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    iget p1, p1, Lorg/apache/asn1/ber/Tuple;->length:I

    if-lez p1, :cond_8

    .line 322
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->VALUE:Lorg/apache/asn1/ber/BERDecoderState;

    iput-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    goto :goto_3

    .line 326
    :cond_8
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->VALUE:Lorg/apache/asn1/ber/BERDecoderState;

    iput-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    .line 327
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    sget-object p2, Lorg/apache/asn1/ber/BERDecoder;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p2, p1, Lorg/apache/asn1/ber/Tuple;->valueChunk:Ljava/nio/ByteBuffer;

    .line 328
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->cb:Lorg/apache/asn1/ber/BERDecoderCallback;

    iget-object p2, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-interface {p1, p2}, Lorg/apache/asn1/ber/BERDecoderCallback;->partialValueDecoded(Lorg/apache/asn1/ber/Tuple;)V

    .line 329
    iget-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-direct {p0, p1}, Lorg/apache/asn1/ber/BERDecoder;->fireDecodeOccurred(Lorg/apache/asn1/ber/Tuple;)V

    .line 330
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    iput-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    :goto_3
    return-void

    .line 335
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unrecognized decoder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getCurrentTuple()Lorg/apache/asn1/ber/Tuple;
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->tlv:Lorg/apache/asn1/ber/Tuple;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/Tuple;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/asn1/ber/Tuple;

    return-object v0
.end method

.method getState()Lorg/apache/asn1/ber/BERDecoderState;
    .locals 1

    .line 507
    iget-object v0, p0, Lorg/apache/asn1/ber/BERDecoder;->state:Lorg/apache/asn1/ber/BERDecoderState;

    return-object v0
.end method

.method getTupleStack()Ljava/util/Stack;
    .locals 3

    .line 531
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    const/4 v1, 0x0

    .line 533
    :goto_0
    iget-object v2, p0, Lorg/apache/asn1/ber/BERDecoder;->tlvStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 535
    iget-object v2, p0, Lorg/apache/asn1/ber/BERDecoder;->tlvStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/asn1/ber/Tuple;

    .line 536
    invoke-virtual {v2}, Lorg/apache/asn1/ber/Tuple;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setCallback(Lorg/apache/asn1/codec/stateful/DecoderCallback;)V
    .locals 0

    .line 172
    check-cast p1, Lorg/apache/asn1/ber/BERDecoderCallback;

    iput-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->cb:Lorg/apache/asn1/ber/BERDecoderCallback;

    return-void
.end method

.method public setDecoderMonitor(Lorg/apache/asn1/codec/stateful/DecoderMonitor;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lorg/apache/asn1/ber/BERDecoder;->monitor:Lorg/apache/asn1/codec/stateful/DecoderMonitor;

    return-void
.end method
