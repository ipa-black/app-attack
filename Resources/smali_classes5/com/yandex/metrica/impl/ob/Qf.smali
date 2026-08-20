.class public Lcom/yandex/metrica/impl/ob/Qf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Kn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Kn<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Sf;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Sf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Qf;->a:Lcom/yandex/metrica/impl/ob/Sf;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/In;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qf;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;)Lcom/yandex/metrica/impl/ob/In;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "YandexMetrica isn\'t initialized. Use YandexMetrica#activate(android.content.Context, String) method to activate."

    .line 91
    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/In;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Qf;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;)Lcom/yandex/metrica/impl/ob/In;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "YandexMetrica isn\'t initialized. Use YandexMetrica#activate(android.content.Context, String) method to activate."

    .line 46
    invoke-static {p0, p1}, Lcom/yandex/metrica/impl/ob/In;->a(Lcom/yandex/metrica/impl/ob/Kn;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/In;

    move-result-object p1

    :goto_0
    return-object p1
.end method
