.class public Lcom/yandex/metrica/impl/ob/Am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Cm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/Bm;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Bm;

    sget-object v1, Lcom/yandex/metrica/impl/ob/Em;->b:Lcom/yandex/metrica/impl/ob/Em;

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/Bm;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Em;)V

    return-object v0
.end method

.method public a([B)[B
    .locals 0

    return-object p1
.end method
