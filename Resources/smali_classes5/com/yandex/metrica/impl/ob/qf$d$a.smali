.class public final Lcom/yandex/metrica/impl/ob/qf$d$a;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/qf$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/qf$d$a$c;,
        Lcom/yandex/metrica/impl/ob/qf$d$a$a;,
        Lcom/yandex/metrica/impl/ob/qf$d$a$b;
    }
.end annotation


# static fields
.field private static volatile y:[Lcom/yandex/metrica/impl/ob/qf$d$a;


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:Ljava/lang/String;

.field public e:[B

.field public f:Lcom/yandex/metrica/impl/ob/qf$b;

.field public g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

.field public h:Ljava/lang/String;

.field public i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

.field public j:I

.field public k:I

.field public l:I

.field public m:[B

.field public n:I

.field public o:J

.field public p:J

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:J

.field public x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/qf$d$a;->a()Lcom/yandex/metrica/impl/ob/qf$d$a;

    return-void
.end method

.method public static b()[Lcom/yandex/metrica/impl/ob/qf$d$a;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->y:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/ym/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/qf$d$a;->y:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/qf$d$a;

    sput-object v1, Lcom/yandex/metrica/impl/ob/qf$d$a;->y:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->y:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/qf$d$a;
    .locals 6

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->a:J

    .line 2
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->b:J

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->c:I

    .line 4
    const-string v3, ""

    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    .line 5
    sget-object v4, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    const/4 v5, 0x0

    .line 6
    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    .line 7
    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    .line 8
    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    .line 9
    iput-object v5, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    .line 10
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->j:I

    .line 11
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->k:I

    const/4 v3, -0x1

    .line 12
    iput v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->l:I

    .line 13
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    .line 14
    iput v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->n:I

    .line 15
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->o:J

    .line 16
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->p:J

    .line 17
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->q:I

    .line 18
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->r:I

    .line 19
    iput v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->s:I

    .line 20
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->t:I

    .line 21
    iput v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->u:I

    .line 22
    iput-boolean v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->v:Z

    const-wide/16 v0, 0x1

    .line 23
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->w:J

    .line 24
    invoke-static {}, Lcom/yandex/metrica/impl/ob/qf$d$a$b;->b()[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    .line 25
    iput v3, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 2
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->a:J

    const/4 v3, 0x1

    .line 3
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->b:J

    const/4 v3, 0x2

    .line 5
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->c:I

    const/4 v2, 0x3

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    const/4 v3, 0x4

    .line 10
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    sget-object v3, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    const/4 v3, 0x5

    .line 14
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    if-eqz v1, :cond_2

    const/4 v3, 0x6

    .line 18
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    if-eqz v1, :cond_3

    const/4 v3, 0x7

    .line 22
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 25
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    const/16 v2, 0x8

    .line 26
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    if-eqz v1, :cond_5

    const/16 v2, 0x9

    .line 30
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_5
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->j:I

    if-eqz v1, :cond_6

    const/16 v2, 0xa

    .line 34
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->k:I

    if-eqz v1, :cond_7

    const/16 v2, 0xc

    .line 38
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_7
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->l:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    const/16 v3, 0xd

    .line 42
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    sget-object v3, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_9

    .line 45
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    const/16 v3, 0xe

    .line 46
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_9
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->n:I

    if-eq v1, v2, :cond_a

    const/16 v3, 0xf

    .line 50
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_a
    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->o:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    const/16 v1, 0x10

    .line 54
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_b
    iget-wide v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->p:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    const/16 v1, 0x11

    .line 58
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_c
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->q:I

    if-eqz v1, :cond_d

    const/16 v3, 0x12

    .line 62
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_d
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->r:I

    if-eqz v1, :cond_e

    const/16 v3, 0x13

    .line 66
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_e
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->s:I

    if-eq v1, v2, :cond_f

    const/16 v2, 0x14

    .line 70
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_f
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->t:I

    if-eqz v1, :cond_10

    const/16 v2, 0x15

    .line 74
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_10
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->u:I

    if-eqz v1, :cond_11

    const/16 v2, 0x16

    .line 78
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_11
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->v:Z

    if-eqz v1, :cond_12

    const/16 v2, 0x17

    .line 82
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_12
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->w:J

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_13

    const/16 v3, 0x18

    .line 86
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    if-eqz v1, :cond_15

    array-length v1, v1

    if-lez v1, :cond_15

    const/4 v1, 0x0

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    array-length v3, v2

    if-ge v1, v3, :cond_15

    .line 90
    aget-object v2, v2, v1

    if-eqz v2, :cond_14

    const/16 v3, 0x19

    .line 93
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_15
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/ym/MessageNano;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :sswitch_0
    const/16 v0, 0xca

    .line 173
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 175
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    if-eqz v3, :cond_2

    .line 178
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    .line 181
    new-instance v1, Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/qf$d$a$b;-><init>()V

    aput-object v1, v4, v3

    .line 182
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 183
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 186
    :cond_3
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d$a$b;-><init>()V

    aput-object v0, v4, v3

    .line 187
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 188
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    goto :goto_0

    .line 189
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->w:J

    goto :goto_0

    .line 190
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->v:Z

    goto :goto_0

    .line 191
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_4

    goto :goto_0

    .line 195
    :cond_4
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->u:I

    goto :goto_0

    .line 196
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 202
    :cond_5
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->t:I

    goto :goto_0

    .line 203
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eq v0, v2, :cond_6

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_6

    goto :goto_0

    .line 208
    :cond_6
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->s:I

    goto/16 :goto_0

    .line 209
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_7

    goto/16 :goto_0

    .line 215
    :cond_7
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->r:I

    goto/16 :goto_0

    .line 216
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_8

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    goto/16 :goto_0

    .line 223
    :cond_8
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->q:I

    goto/16 :goto_0

    .line 224
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->p:J

    goto/16 :goto_0

    .line 225
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->o:J

    goto/16 :goto_0

    .line 226
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eq v0, v2, :cond_9

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_9

    goto/16 :goto_0

    .line 231
    :cond_9
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->n:I

    goto/16 :goto_0

    .line 232
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    goto/16 :goto_0

    .line 233
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eq v0, v2, :cond_a

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_a

    goto/16 :goto_0

    .line 238
    :cond_a
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->l:I

    goto/16 :goto_0

    .line 239
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_b

    goto/16 :goto_0

    .line 244
    :cond_b
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->k:I

    goto/16 :goto_0

    .line 245
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->j:I

    goto/16 :goto_0

    .line 246
    :sswitch_f
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    if-nez v0, :cond_c

    .line 247
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d$a$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    .line 249
    :cond_c
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    goto/16 :goto_0

    .line 250
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    goto/16 :goto_0

    .line 251
    :sswitch_11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    if-nez v0, :cond_d

    .line 252
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d$a$c;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    .line 254
    :cond_d
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    goto/16 :goto_0

    .line 255
    :sswitch_12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    if-nez v0, :cond_e

    .line 256
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$b;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    .line 258
    :cond_e
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    goto/16 :goto_0

    .line 259
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    goto/16 :goto_0

    .line 260
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 261
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->c:I

    goto/16 :goto_0

    .line 262
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->b:J

    goto/16 :goto_0

    .line 263
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->a:J

    goto/16 :goto_0

    :goto_3
    :sswitch_18
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_18
        0x8 -> :sswitch_17
        0x10 -> :sswitch_16
        0x18 -> :sswitch_15
        0x22 -> :sswitch_14
        0x2a -> :sswitch_13
        0x32 -> :sswitch_12
        0x3a -> :sswitch_11
        0x42 -> :sswitch_10
        0x4a -> :sswitch_f
        0x50 -> :sswitch_e
        0x60 -> :sswitch_d
        0x68 -> :sswitch_c
        0x72 -> :sswitch_b
        0x78 -> :sswitch_a
        0x80 -> :sswitch_9
        0x88 -> :sswitch_8
        0x90 -> :sswitch_7
        0x98 -> :sswitch_6
        0xa0 -> :sswitch_5
        0xa8 -> :sswitch_4
        0xb0 -> :sswitch_3
        0xb8 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->a:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->b:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 3
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    sget-object v2, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    if-eqz v0, :cond_2

    const/4 v2, 0x6

    .line 11
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    if-eqz v0, :cond_3

    const/4 v2, 0x7

    .line 14
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 22
    :cond_5
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->j:I

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 25
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->k:I

    if-eqz v0, :cond_7

    const/16 v1, 0xc

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 28
    :cond_7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const/16 v2, 0xd

    .line 29
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 31
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    sget-object v2, Lcom/google/protobuf/nano/ym/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_9

    .line 32
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 34
    :cond_9
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->n:I

    if-eq v0, v1, :cond_a

    const/16 v2, 0xf

    .line 35
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 37
    :cond_a
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->o:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    const/16 v0, 0x10

    .line 38
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 40
    :cond_b
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->p:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    const/16 v0, 0x11

    .line 41
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 43
    :cond_c
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->q:I

    if-eqz v0, :cond_d

    const/16 v2, 0x12

    .line 44
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 46
    :cond_d
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->r:I

    if-eqz v0, :cond_e

    const/16 v2, 0x13

    .line 47
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 49
    :cond_e
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->s:I

    if-eq v0, v1, :cond_f

    const/16 v1, 0x14

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 52
    :cond_f
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->t:I

    if-eqz v0, :cond_10

    const/16 v1, 0x15

    .line 53
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 55
    :cond_10
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->u:I

    if-eqz v0, :cond_11

    const/16 v1, 0x16

    .line 56
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 58
    :cond_11
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->v:Z

    if-eqz v0, :cond_12

    const/16 v1, 0x17

    .line 59
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 61
    :cond_12
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->w:J

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    const/16 v2, 0x18

    .line 62
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 64
    :cond_13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    if-eqz v0, :cond_15

    array-length v0, v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 66
    aget-object v1, v1, v0

    if-eqz v1, :cond_14

    const/16 v2, 0x19

    .line 68
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_15
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    return-void
.end method
