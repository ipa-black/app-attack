.class public Lcom/yandex/metrica/ecommerce/ECommerceEventProvider;
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
.method public addCartItemEvent(Lcom/yandex/metrica/ecommerce/ECommerceCartItem;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ta;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ua;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Ua;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceCartItem;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/Ba;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ba;-><init>()V

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, p1}, Lcom/yandex/metrica/impl/ob/Ta;-><init>(ILcom/yandex/metrica/impl/ob/Ua;Lcom/yandex/metrica/impl/ob/Fa;)V

    return-object v0
.end method

.method public beginCheckoutEvent(Lcom/yandex/metrica/ecommerce/ECommerceOrder;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Va;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/Wa;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Wa;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceOrder;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/Ga;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ga;-><init>()V

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1, p1}, Lcom/yandex/metrica/impl/ob/Va;-><init>(ILcom/yandex/metrica/impl/ob/Wa;Lcom/yandex/metrica/impl/ob/Fa;)V

    return-object v0
.end method

.method public purchaseEvent(Lcom/yandex/metrica/ecommerce/ECommerceOrder;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Va;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/Wa;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Wa;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceOrder;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/Ga;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ga;-><init>()V

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1, p1}, Lcom/yandex/metrica/impl/ob/Va;-><init>(ILcom/yandex/metrica/impl/ob/Wa;Lcom/yandex/metrica/impl/ob/Fa;)V

    return-object v0
.end method

.method public removeCartItemEvent(Lcom/yandex/metrica/ecommerce/ECommerceCartItem;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ta;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ua;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Ua;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceCartItem;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/Ba;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ba;-><init>()V

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, p1}, Lcom/yandex/metrica/impl/ob/Ta;-><init>(ILcom/yandex/metrica/impl/ob/Ua;Lcom/yandex/metrica/impl/ob/Fa;)V

    return-object v0
.end method

.method public showProductCardEvent(Lcom/yandex/metrica/ecommerce/ECommerceProduct;Lcom/yandex/metrica/ecommerce/ECommerceScreen;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/cb;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ya;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Ya;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceProduct;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/bb;

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/bb;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceScreen;)V

    new-instance p2, Lcom/yandex/metrica/impl/ob/Pa;

    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/Pa;-><init>()V

    invoke-direct {v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/cb;-><init>(Lcom/yandex/metrica/impl/ob/Ya;Lcom/yandex/metrica/impl/ob/bb;Lcom/yandex/metrica/impl/ob/Fa;)V

    return-object v0
.end method

.method public showProductDetailsEvent(Lcom/yandex/metrica/ecommerce/ECommerceProduct;Lcom/yandex/metrica/ecommerce/ECommerceReferrer;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/db;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ya;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/Ya;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceProduct;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/yandex/metrica/impl/ob/ab;

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/ab;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceReferrer;)V

    :goto_0
    new-instance p2, Lcom/yandex/metrica/impl/ob/Qa;

    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/Qa;-><init>()V

    .line 5
    invoke-direct {v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/db;-><init>(Lcom/yandex/metrica/impl/ob/Ya;Lcom/yandex/metrica/impl/ob/ab;Lcom/yandex/metrica/impl/ob/Fa;)V

    return-object v0
.end method

.method public showScreenEvent(Lcom/yandex/metrica/ecommerce/ECommerceScreen;)Lcom/yandex/metrica/ecommerce/ECommerceEvent;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/eb;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/bb;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/bb;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceScreen;)V

    new-instance p1, Lcom/yandex/metrica/impl/ob/Ra;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/Ra;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/eb;-><init>(Lcom/yandex/metrica/impl/ob/bb;Lcom/yandex/metrica/impl/ob/Fa;)V

    return-object v0
.end method
