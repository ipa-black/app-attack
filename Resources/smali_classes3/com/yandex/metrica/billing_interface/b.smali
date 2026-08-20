.class public final enum Lcom/yandex/metrica/billing_interface/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/billing_interface/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/billing_interface/b;

.field public static final enum b:Lcom/yandex/metrica/billing_interface/b;

.field public static final enum c:Lcom/yandex/metrica/billing_interface/b;

.field private static final synthetic d:[Lcom/yandex/metrica/billing_interface/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/billing_interface/b;

    const-string v1, "LIBRARY_V3"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/billing_interface/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/billing_interface/b;->a:Lcom/yandex/metrica/billing_interface/b;

    new-instance v1, Lcom/yandex/metrica/billing_interface/b;

    const-string v2, "LIBRARY_V4"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/billing_interface/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yandex/metrica/billing_interface/b;->b:Lcom/yandex/metrica/billing_interface/b;

    new-instance v2, Lcom/yandex/metrica/billing_interface/b;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/billing_interface/b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/yandex/metrica/billing_interface/b;->c:Lcom/yandex/metrica/billing_interface/b;

    .line 2
    filled-new-array {v0, v1, v2}, [Lcom/yandex/metrica/billing_interface/b;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/yandex/metrica/billing_interface/b;->d:[Lcom/yandex/metrica/billing_interface/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/billing_interface/b;
    .locals 1

    .line 1
    const-class v0, Lcom/yandex/metrica/billing_interface/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/billing_interface/b;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/billing_interface/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/billing_interface/b;->d:[Lcom/yandex/metrica/billing_interface/b;

    invoke-virtual {v0}, [Lcom/yandex/metrica/billing_interface/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/billing_interface/b;

    return-object v0
.end method
