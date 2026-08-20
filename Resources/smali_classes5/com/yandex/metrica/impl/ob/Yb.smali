.class public Lcom/yandex/metrica/impl/ob/Yb;
.super Lcom/yandex/metrica/impl/ob/V;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/V<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/xc;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/V;Lcom/yandex/metrica/impl/ob/xc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/V<",
            "Landroid/location/Location;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/xc;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/V;-><init>(Lcom/yandex/metrica/impl/ob/V;)V

    .line 2
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Yb;->b:Lcom/yandex/metrica/impl/ob/xc;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/location/Location;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Yb;->b:Lcom/yandex/metrica/impl/ob/xc;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/v2;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
