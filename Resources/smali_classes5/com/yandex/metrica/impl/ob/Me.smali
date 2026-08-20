.class public Lcom/yandex/metrica/impl/ob/Me;
.super Lcom/yandex/metrica/impl/ob/Ke;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Je;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/Ke;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/af;Lcom/yandex/metrica/impl/ob/vf$a;Lcom/yandex/metrica/impl/ob/Ie;)Lcom/yandex/metrica/impl/ob/vf$a;
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p2, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/vf$b;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/vf$b;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/vf$b;-><init>()V

    iput-object p1, p2, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    return-object p2

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ke;->a()Lcom/yandex/metrica/impl/ob/Je;

    move-result-object p2

    check-cast p3, Lcom/yandex/metrica/impl/ob/Se;

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/Se;->a()Lcom/yandex/metrica/impl/ob/vf$a;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/yandex/metrica/impl/ob/Je;->a(Lcom/yandex/metrica/impl/ob/af;Lcom/yandex/metrica/impl/ob/vf$a;)Lcom/yandex/metrica/impl/ob/vf$a;

    move-result-object p1

    return-object p1
.end method
