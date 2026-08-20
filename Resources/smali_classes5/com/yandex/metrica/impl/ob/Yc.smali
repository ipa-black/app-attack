.class public Lcom/yandex/metrica/impl/ob/Yc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/lc;)Lcom/yandex/metrica/impl/ob/pf$a;
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/pf$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/pf$a;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->f()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    iget-wide v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->a:J

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->f()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->a:J

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/metrica/impl/ob/pf$a;->b:J

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->e:J

    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->b()Lcom/yandex/metrica/impl/ob/E$b$a;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->b()Lcom/yandex/metrica/impl/ob/E$b$a;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/J1;->a(Lcom/yandex/metrica/impl/ob/E$b$a;)I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->f:I

    .line 8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->e()Lcom/yandex/metrica/impl/ob/oc$a;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->e()Lcom/yandex/metrica/impl/ob/oc$a;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/J1;->a(Lcom/yandex/metrica/impl/ob/oc$a;)I

    move-result v1

    :goto_2
    iput v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->g:I

    .line 10
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->a()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/J1;->b(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/of;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->c:[Lcom/yandex/metrica/impl/ob/of;

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lc;->g()Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/J1;->a(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/rf;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/pf$a;->d:[Lcom/yandex/metrica/impl/ob/rf;

    :cond_4
    return-object v0
.end method
