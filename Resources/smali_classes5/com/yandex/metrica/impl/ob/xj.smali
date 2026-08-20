.class public Lcom/yandex/metrica/impl/ob/xj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/uj;)Lcom/yandex/metrica/impl/ob/uj;
    .locals 2

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/uj$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/uj$a;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->a(I)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->l(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->k()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->i(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->j(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->c(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->b(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 24
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->a(Z)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 27
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->k(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 30
    :cond_7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->a(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 31
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 32
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->f(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 34
    :cond_8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->j()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 35
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->j()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->h(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 37
    :cond_9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 38
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 40
    :cond_a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 41
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->g(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 43
    :cond_b
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 44
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/uj$a;->d(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 46
    :cond_c
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->g()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/xj;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 47
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/uj;->g()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/uj$a;->e(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/uj$a;

    .line 48
    :cond_d
    new-instance p1, Lcom/yandex/metrica/impl/ob/uj;

    invoke-direct {p1, v0}, Lcom/yandex/metrica/impl/ob/uj;-><init>(Lcom/yandex/metrica/impl/ob/uj$a;)V

    return-object p1
.end method
