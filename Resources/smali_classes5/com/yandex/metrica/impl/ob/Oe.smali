.class public final Lcom/yandex/metrica/impl/ob/Oe;
.super Lcom/yandex/metrica/impl/ob/Ne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Ne<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 6

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-instance v4, Lcom/yandex/metrica/impl/ob/Qe;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Qe;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/Me;

    new-instance p2, Lcom/yandex/metrica/impl/ob/Re;

    new-instance p3, Lcom/yandex/metrica/impl/ob/Wm;

    const/16 v0, 0x64

    invoke-direct {p3, v0}, Lcom/yandex/metrica/impl/ob/Wm;-><init>(I)V

    invoke-direct {p2, p3}, Lcom/yandex/metrica/impl/ob/Re;-><init>(Lcom/yandex/metrica/impl/ob/Wm;)V

    invoke-direct {v5, p2}, Lcom/yandex/metrica/impl/ob/Me;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Ne;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/metrica/impl/ob/vf$a;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/vf$a;->d:Lcom/yandex/metrica/impl/ob/vf$c;

    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/vf$c;->c:D

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Ne;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p1, Lcom/yandex/metrica/impl/ob/vf$c;->c:D

    return-void
.end method
