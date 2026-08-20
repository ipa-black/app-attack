.class public final enum Lcom/appodeal/ads/UserSettings$Gender;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/UserSettings$Gender$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/UserSettings$Gender;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cj\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/appodeal/ads/UserSettings$Gender;",
        "",
        "",
        "a",
        "I",
        "getIntValue",
        "()I",
        "intValue",
        "",
        "b",
        "Ljava/lang/String;",
        "getStringValue",
        "()Ljava/lang/String;",
        "stringValue",
        "Companion",
        "OTHER",
        "FEMALE",
        "MALE",
        "apd_public"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/UserSettings$Gender;

.field public static final Companion:Lcom/appodeal/ads/UserSettings$Gender$a;

.field public static final enum FEMALE:Lcom/appodeal/ads/UserSettings$Gender;

.field public static final enum MALE:Lcom/appodeal/ads/UserSettings$Gender;

.field public static final enum OTHER:Lcom/appodeal/ads/UserSettings$Gender;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/appodeal/ads/UserSettings$Gender;

    const/4 v1, 0x0

    const-string v2, "O"

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/appodeal/ads/UserSettings$Gender;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/UserSettings$Gender;->OTHER:Lcom/appodeal/ads/UserSettings$Gender;

    new-instance v1, Lcom/appodeal/ads/UserSettings$Gender;

    const/4 v2, 0x1

    const-string v3, "F"

    const-string v4, "FEMALE"

    invoke-direct {v1, v4, v2, v2, v3}, Lcom/appodeal/ads/UserSettings$Gender;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/appodeal/ads/UserSettings$Gender;->FEMALE:Lcom/appodeal/ads/UserSettings$Gender;

    new-instance v2, Lcom/appodeal/ads/UserSettings$Gender;

    const/4 v3, 0x2

    const-string v4, "M"

    const-string v5, "MALE"

    invoke-direct {v2, v5, v3, v3, v4}, Lcom/appodeal/ads/UserSettings$Gender;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/appodeal/ads/UserSettings$Gender;->MALE:Lcom/appodeal/ads/UserSettings$Gender;

    .line 1
    filled-new-array {v0, v1, v2}, [Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/appodeal/ads/UserSettings$Gender;->$VALUES:[Lcom/appodeal/ads/UserSettings$Gender;

    new-instance v0, Lcom/appodeal/ads/UserSettings$Gender$a;

    .line 3
    invoke-direct {v0}, Lcom/appodeal/ads/UserSettings$Gender$a;-><init>()V

    .line 4
    sput-object v0, Lcom/appodeal/ads/UserSettings$Gender;->Companion:Lcom/appodeal/ads/UserSettings$Gender$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appodeal/ads/UserSettings$Gender;->a:I

    iput-object p4, p0, Lcom/appodeal/ads/UserSettings$Gender;->b:Ljava/lang/String;

    return-void
.end method

.method public static final fromInteger(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Gender;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appodeal/ads/UserSettings$Gender;->Companion:Lcom/appodeal/ads/UserSettings$Gender$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/appodeal/ads/UserSettings$Gender;->MALE:Lcom/appodeal/ads/UserSettings$Gender;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/appodeal/ads/UserSettings$Gender;->FEMALE:Lcom/appodeal/ads/UserSettings$Gender;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/appodeal/ads/UserSettings$Gender;->OTHER:Lcom/appodeal/ads/UserSettings$Gender;

    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/UserSettings$Gender;
    .locals 1

    const-class v0, Lcom/appodeal/ads/UserSettings$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/UserSettings$Gender;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/UserSettings$Gender;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/UserSettings$Gender;->$VALUES:[Lcom/appodeal/ads/UserSettings$Gender;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/UserSettings$Gender;

    return-object v0
.end method


# virtual methods
.method public final getIntValue()I
    .locals 1

    iget v0, p0, Lcom/appodeal/ads/UserSettings$Gender;->a:I

    return v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/UserSettings$Gender;->b:Ljava/lang/String;

    return-object v0
.end method
