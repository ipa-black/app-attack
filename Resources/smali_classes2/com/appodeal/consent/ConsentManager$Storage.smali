.class public final enum Lcom/appodeal/consent/ConsentManager$Storage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/consent/ConsentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Storage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/consent/ConsentManager$Storage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0003\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/appodeal/consent/ConsentManager$Storage;",
        "",
        "NONE",
        "SHARED_PREFERENCE",
        "apd_consent"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final enum NONE:Lcom/appodeal/consent/ConsentManager$Storage;

.field public static final enum SHARED_PREFERENCE:Lcom/appodeal/consent/ConsentManager$Storage;

.field public static final synthetic a:[Lcom/appodeal/consent/ConsentManager$Storage;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/appodeal/consent/ConsentManager$Storage;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appodeal/consent/ConsentManager$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/consent/ConsentManager$Storage;->NONE:Lcom/appodeal/consent/ConsentManager$Storage;

    new-instance v1, Lcom/appodeal/consent/ConsentManager$Storage;

    const-string v2, "SHARED_PREFERENCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/appodeal/consent/ConsentManager$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appodeal/consent/ConsentManager$Storage;->SHARED_PREFERENCE:Lcom/appodeal/consent/ConsentManager$Storage;

    .line 1
    filled-new-array {v0, v1}, [Lcom/appodeal/consent/ConsentManager$Storage;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/appodeal/consent/ConsentManager$Storage;->a:[Lcom/appodeal/consent/ConsentManager$Storage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/consent/ConsentManager$Storage;
    .locals 1

    const-class v0, Lcom/appodeal/consent/ConsentManager$Storage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/consent/ConsentManager$Storage;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/consent/ConsentManager$Storage;
    .locals 1

    sget-object v0, Lcom/appodeal/consent/ConsentManager$Storage;->a:[Lcom/appodeal/consent/ConsentManager$Storage;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/consent/ConsentManager$Storage;

    return-object v0
.end method
