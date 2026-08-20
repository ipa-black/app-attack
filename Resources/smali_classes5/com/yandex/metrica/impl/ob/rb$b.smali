.class public Lcom/yandex/metrica/impl/ob/rb$b;
.super Lcom/yandex/metrica/impl/ob/rb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/rb;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/pm/FeatureInfo;)Lcom/yandex/metrica/impl/ob/sb;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/sb;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/rb;->c(Landroid/content/pm/FeatureInfo;)Z

    move-result p1

    const/4 v2, -0x1

    .line 2
    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/sb;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method
