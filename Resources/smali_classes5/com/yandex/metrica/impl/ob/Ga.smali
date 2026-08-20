.class public Lcom/yandex/metrica/impl/ob/Ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Fa<",
        "Lcom/yandex/metrica/impl/ob/Va;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ha;

.field private final b:Lcom/yandex/metrica/impl/ob/Ca;

.field private final c:Lcom/yandex/metrica/impl/ob/kn;

.field private final d:Lcom/yandex/metrica/impl/ob/La;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ha;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ha;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Ca;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Ca;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/La;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/La;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Ga;-><init>(Lcom/yandex/metrica/impl/ob/Ha;Lcom/yandex/metrica/impl/ob/Ca;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/La;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ha;Lcom/yandex/metrica/impl/ob/Ca;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/La;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ga;->a:Lcom/yandex/metrica/impl/ob/Ha;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ga;->b:Lcom/yandex/metrica/impl/ob/Ca;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ga;->c:Lcom/yandex/metrica/impl/ob/kn;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Ga;->d:Lcom/yandex/metrica/impl/ob/La;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/mf;)Lcom/yandex/metrica/impl/ob/mf;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf;-><init>()V

    .line 2
    iget v1, p1, Lcom/yandex/metrica/impl/ob/mf;->a:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/mf$h;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/mf$h;-><init>()V

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 4
    new-instance v2, Lcom/yandex/metrica/impl/ob/mf$f;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/mf$f;-><init>()V

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    .line 5
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    .line 6
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    .line 7
    iget v2, p1, Lcom/yandex/metrica/impl/ob/mf$f;->e:I

    iput v2, v1, Lcom/yandex/metrica/impl/ob/mf$f;->e:I

    .line 8
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    iput-object p1, v1, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    return-object v0
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/yandex/metrica/impl/ob/Va;

    .line 2
    new-instance v2, Lcom/yandex/metrica/impl/ob/mf;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/mf;-><init>()V

    .line 3
    iget v3, v1, Lcom/yandex/metrica/impl/ob/Va;->b:I

    iput v3, v2, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 4
    new-instance v3, Lcom/yandex/metrica/impl/ob/mf$h;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/mf$h;-><init>()V

    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    .line 6
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Va;->c:Lcom/yandex/metrica/impl/ob/Wa;

    .line 7
    new-instance v3, Lcom/yandex/metrica/impl/ob/mf$f;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/mf$f;-><init>()V

    .line 9
    iget-object v4, v1, Lcom/yandex/metrica/impl/ob/Wa;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lcom/yandex/metrica/impl/ob/mf$f;->a:[B

    .line 11
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/Ga;->c:Lcom/yandex/metrica/impl/ob/kn;

    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/Wa;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    move-result-object v4

    .line 13
    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v3, Lcom/yandex/metrica/impl/ob/mf$f;->b:[B

    .line 15
    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/Wa;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v3, Lcom/yandex/metrica/impl/ob/mf$f;->e:I

    .line 18
    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/Wa;->d:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 19
    iget-object v6, v0, Lcom/yandex/metrica/impl/ob/Ga;->a:Lcom/yandex/metrica/impl/ob/Ha;

    invoke-virtual {v6, v5}, Lcom/yandex/metrica/impl/ob/Ha;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object v5

    .line 20
    iget-object v6, v5, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    check-cast v6, Lcom/yandex/metrica/impl/ob/mf$i;

    iput-object v6, v3, Lcom/yandex/metrica/impl/ob/mf$f;->c:Lcom/yandex/metrica/impl/ob/mf$i;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 23
    :goto_0
    iget-object v6, v2, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    iput-object v3, v6, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    const/4 v3, 0x2

    .line 25
    new-array v6, v3, [Lcom/yandex/metrica/impl/ob/Vm;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    move-result-object v5

    .line 37
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Wa;->c:Ljava/util/List;

    .line 38
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v8, v0, Lcom/yandex/metrica/impl/ob/Ga;->d:Lcom/yandex/metrica/impl/ob/La;

    .line 41
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iget v8, v2, Lcom/yandex/metrica/impl/ob/mf;->a:I

    new-instance v9, Lcom/yandex/metrica/impl/ob/mf;

    invoke-direct {v9}, Lcom/yandex/metrica/impl/ob/mf;-><init>()V

    iget v9, v9, Lcom/yandex/metrica/impl/ob/mf;->a:I

    if-eq v8, v9, :cond_1

    .line 61
    iget v8, v2, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 62
    invoke-static {v4, v8}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v7

    .line 64
    :goto_1
    iget-object v9, v2, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

    if-eqz v9, :cond_2

    .line 66
    invoke-static {v3, v9}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    .line 68
    :cond_2
    iget-object v9, v2, Lcom/yandex/metrica/impl/ob/mf;->c:Lcom/yandex/metrica/impl/ob/mf$o;

    if-eqz v9, :cond_3

    const/4 v10, 0x3

    .line 70
    invoke-static {v10, v9}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    .line 72
    :cond_3
    iget-object v9, v2, Lcom/yandex/metrica/impl/ob/mf;->d:Lcom/yandex/metrica/impl/ob/mf$p;

    const/4 v10, 0x4

    if-eqz v9, :cond_4

    .line 74
    invoke-static {v10, v9}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    .line 76
    :cond_4
    iget-object v9, v2, Lcom/yandex/metrica/impl/ob/mf;->e:Lcom/yandex/metrica/impl/ob/mf$b;

    if-eqz v9, :cond_5

    const/4 v11, 0x5

    .line 78
    invoke-static {v11, v9}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    .line 80
    :cond_5
    iget-object v9, v2, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    if-eqz v9, :cond_6

    const/4 v11, 0x6

    .line 82
    invoke-static {v11, v9}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    .line 83
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/Ga;->a(Lcom/yandex/metrica/impl/ob/mf;)Lcom/yandex/metrica/impl/ob/mf;

    move-result-object v11

    move-object v13, v5

    move v12, v7

    move v14, v8

    .line 89
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_9

    .line 91
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/yandex/metrica/impl/ob/Ua;

    .line 92
    new-instance v4, Lcom/yandex/metrica/impl/ob/mf$g;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/mf$g;-><init>()V

    .line 93
    iput v12, v4, Lcom/yandex/metrica/impl/ob/mf$g;->a:I

    .line 95
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Ga;->b:Lcom/yandex/metrica/impl/ob/Ca;

    .line 96
    invoke-virtual {v7, v15}, Lcom/yandex/metrica/impl/ob/Ca;->a(Lcom/yandex/metrica/impl/ob/Ua;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object v7

    .line 97
    iget-object v15, v7, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    check-cast v15, Lcom/yandex/metrica/impl/ob/mf$c;

    iput-object v15, v4, Lcom/yandex/metrica/impl/ob/mf$g;->b:Lcom/yandex/metrica/impl/ob/mf$c;

    .line 98
    iget-object v15, v0, Lcom/yandex/metrica/impl/ob/Ga;->d:Lcom/yandex/metrica/impl/ob/La;

    .line 99
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    invoke-static {v10}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v15

    .line 153
    invoke-static {v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v17

    and-int/lit8 v18, v17, -0x80

    if-nez v18, :cond_7

    const/16 v18, 0x0

    goto :goto_3

    .line 157
    :cond_7
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v18

    :goto_3
    add-int v15, v15, v17

    add-int v15, v15, v18

    .line 158
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_8

    add-int v10, v14, v15

    const v3, 0x32000

    if-le v10, v3, :cond_8

    .line 159
    iget-object v3, v11, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    .line 160
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lcom/yandex/metrica/impl/ob/mf$g;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/yandex/metrica/impl/ob/mf$g;

    .line 161
    iput-object v9, v3, Lcom/yandex/metrica/impl/ob/mf$f;->d:[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v9, Lcom/yandex/metrica/impl/ob/Na;

    invoke-direct {v9, v11, v13}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/Ga;->a(Lcom/yandex/metrica/impl/ob/mf;)Lcom/yandex/metrica/impl/ob/mf;

    move-result-object v9

    move-object v13, v5

    move v14, v8

    move-object v11, v9

    move-object v9, v3

    .line 178
    :cond_8
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 179
    new-array v4, v3, [Lcom/yandex/metrica/impl/ob/Vm;

    const/4 v10, 0x0

    aput-object v13, v4, v10

    const/16 v16, 0x1

    aput-object v7, v4, v16

    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    move-result-object v13

    add-int/2addr v14, v15

    add-int/lit8 v12, v12, 0x1

    move v7, v10

    move/from16 v4, v16

    const/4 v10, 0x4

    goto/16 :goto_2

    .line 187
    :cond_9
    iget-object v1, v11, Lcom/yandex/metrica/impl/ob/mf;->f:Lcom/yandex/metrica/impl/ob/mf$h;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/mf$h;->a:Lcom/yandex/metrica/impl/ob/mf$f;

    .line 188
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/mf$g;

    invoke-interface {v9, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/yandex/metrica/impl/ob/mf$g;

    .line 189
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/mf$f;->d:[Lcom/yandex/metrica/impl/ob/mf$g;

    .line 190
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    invoke-direct {v1, v11, v13}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
