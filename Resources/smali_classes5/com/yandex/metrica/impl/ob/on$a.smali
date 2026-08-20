.class public Lcom/yandex/metrica/impl/ob/on$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/un;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/on;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/un<",
        "Lcom/yandex/metrica/impl/ob/uj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/tn;
    .locals 1

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/uj;

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/on;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/on;-><init>(Lcom/yandex/metrica/impl/ob/uj;)V

    return-object v0
.end method
