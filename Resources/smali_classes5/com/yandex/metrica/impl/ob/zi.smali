.class public Lcom/yandex/metrica/impl/ob/zi;
.super Lcom/yandex/metrica/impl/ob/vi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/vi;-><init>(Lcom/yandex/metrica/impl/ob/ri;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/yi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/yandex/metrica/impl/ob/P3;",
            ">()",
            "Lcom/yandex/metrica/impl/ob/yi;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ai;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ai;-><init>()V

    return-object v0
.end method
