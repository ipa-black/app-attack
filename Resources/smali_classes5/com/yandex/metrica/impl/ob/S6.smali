.class public Lcom/yandex/metrica/impl/ob/S6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/B6;",
        "Lcom/yandex/metrica/impl/ob/hf;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/W6;

.field private final b:Lcom/yandex/metrica/impl/ob/J6;

.field private final c:Lcom/yandex/metrica/impl/ob/L6;

.field private final d:Lcom/yandex/metrica/impl/ob/T6;

.field private final e:Lcom/yandex/metrica/impl/ob/Q6;

.field private final f:Lcom/yandex/metrica/impl/ob/R6;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v1, Lcom/yandex/metrica/impl/ob/W6;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/W6;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/J6;

    new-instance v0, Lcom/yandex/metrica/impl/ob/V6;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/V6;-><init>()V

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/J6;-><init>(Lcom/yandex/metrica/impl/ob/V6;)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/L6;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/L6;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/T6;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/T6;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/Q6;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Q6;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/R6;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/R6;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/S6;-><init>(Lcom/yandex/metrica/impl/ob/W6;Lcom/yandex/metrica/impl/ob/J6;Lcom/yandex/metrica/impl/ob/L6;Lcom/yandex/metrica/impl/ob/T6;Lcom/yandex/metrica/impl/ob/Q6;Lcom/yandex/metrica/impl/ob/R6;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/W6;Lcom/yandex/metrica/impl/ob/J6;Lcom/yandex/metrica/impl/ob/L6;Lcom/yandex/metrica/impl/ob/T6;Lcom/yandex/metrica/impl/ob/Q6;Lcom/yandex/metrica/impl/ob/R6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/S6;->a:Lcom/yandex/metrica/impl/ob/W6;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/S6;->b:Lcom/yandex/metrica/impl/ob/J6;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/S6;->c:Lcom/yandex/metrica/impl/ob/L6;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/S6;->d:Lcom/yandex/metrica/impl/ob/T6;

    .line 7
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/S6;->e:Lcom/yandex/metrica/impl/ob/Q6;

    .line 8
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/S6;->f:Lcom/yandex/metrica/impl/ob/R6;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/B6;)Lcom/yandex/metrica/impl/ob/hf;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/hf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/hf;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/B6;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/hf;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->f:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/B6;->b:Lcom/yandex/metrica/impl/ob/H6;

    if-eqz p1, :cond_7

    .line 5
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->a:Lcom/yandex/metrica/impl/ob/F6;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/S6;->a:Lcom/yandex/metrica/impl/ob/W6;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/W6;->a(Lcom/yandex/metrica/impl/ob/F6;)Lcom/yandex/metrica/impl/ob/lf;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->a:Lcom/yandex/metrica/impl/ob/lf;

    .line 8
    :cond_1
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->b:Lcom/yandex/metrica/impl/ob/w6;

    if-eqz v1, :cond_2

    .line 9
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/S6;->b:Lcom/yandex/metrica/impl/ob/J6;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/J6;->a(Lcom/yandex/metrica/impl/ob/w6;)Lcom/yandex/metrica/impl/ob/df;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->b:Lcom/yandex/metrica/impl/ob/df;

    .line 11
    :cond_2
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->c:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 12
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/S6;->d:Lcom/yandex/metrica/impl/ob/T6;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/T6;->a(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/jf;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->e:[Lcom/yandex/metrica/impl/ob/jf;

    .line 14
    :cond_3
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->g:Ljava/lang/String;

    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/hf;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->c:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/S6;->c:Lcom/yandex/metrica/impl/ob/L6;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/H6;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/F1;->a(Ljava/lang/Boolean;)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/hf;->d:I

    .line 16
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 17
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/S6;->e:Lcom/yandex/metrica/impl/ob/Q6;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/H6;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Q6;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->i:[B

    .line 19
    :cond_5
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 20
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/hf;->j:[B

    .line 22
    :cond_6
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/H6;->f:Ljava/util/Map;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 23
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/S6;->f:Lcom/yandex/metrica/impl/ob/R6;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/H6;->f:Ljava/util/Map;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/R6;->a(Ljava/util/Map;)[Lcom/yandex/metrica/impl/ob/ff;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/hf;->k:[Lcom/yandex/metrica/impl/ob/ff;

    :cond_7
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/B6;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/S6;->a(Lcom/yandex/metrica/impl/ob/B6;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object p1

    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/hf;

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
