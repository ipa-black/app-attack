.class public Lcom/yandex/metrica/impl/ob/We;
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
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    iget-boolean p2, p2, Lcom/yandex/metrica/impl/ob/vf$b;->b:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    :goto_0
    check-cast p3, Lcom/yandex/metrica/impl/ob/Se;

    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/Se;->a()Lcom/yandex/metrica/impl/ob/vf$a;

    move-result-object p2

    .line 3
    iget-object p3, p2, Lcom/yandex/metrica/impl/ob/vf$a;->c:Lcom/yandex/metrica/impl/ob/vf$b;

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/yandex/metrica/impl/ob/vf$b;->a:Z

    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ke;->a()Lcom/yandex/metrica/impl/ob/Je;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/yandex/metrica/impl/ob/Je;->a(Lcom/yandex/metrica/impl/ob/af;Lcom/yandex/metrica/impl/ob/vf$a;)Lcom/yandex/metrica/impl/ob/vf$a;

    move-result-object p1

    return-object p1
.end method
