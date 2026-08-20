.class final enum Lio/bidmachine/BidMachineAd$State;
.super Ljava/lang/Enum;
.source "BidMachineAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/BidMachineAd$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/BidMachineAd$State;

.field public static final enum Destroyed:Lio/bidmachine/BidMachineAd$State;

.field public static final enum Expired:Lio/bidmachine/BidMachineAd$State;

.field public static final enum Failed:Lio/bidmachine/BidMachineAd$State;

.field public static final enum Idle:Lio/bidmachine/BidMachineAd$State;

.field public static final enum Loading:Lio/bidmachine/BidMachineAd$State;

.field public static final enum Requesting:Lio/bidmachine/BidMachineAd$State;

.field public static final enum Success:Lio/bidmachine/BidMachineAd$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 531
    new-instance v0, Lio/bidmachine/BidMachineAd$State;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/BidMachineAd$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/BidMachineAd$State;->Idle:Lio/bidmachine/BidMachineAd$State;

    new-instance v1, Lio/bidmachine/BidMachineAd$State;

    const-string v2, "Requesting"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/bidmachine/BidMachineAd$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/BidMachineAd$State;->Requesting:Lio/bidmachine/BidMachineAd$State;

    new-instance v2, Lio/bidmachine/BidMachineAd$State;

    const-string v3, "Loading"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/bidmachine/BidMachineAd$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/bidmachine/BidMachineAd$State;->Loading:Lio/bidmachine/BidMachineAd$State;

    new-instance v3, Lio/bidmachine/BidMachineAd$State;

    const-string v4, "Success"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lio/bidmachine/BidMachineAd$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    new-instance v4, Lio/bidmachine/BidMachineAd$State;

    const-string v5, "Failed"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lio/bidmachine/BidMachineAd$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/bidmachine/BidMachineAd$State;->Failed:Lio/bidmachine/BidMachineAd$State;

    new-instance v5, Lio/bidmachine/BidMachineAd$State;

    const-string v6, "Destroyed"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lio/bidmachine/BidMachineAd$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/bidmachine/BidMachineAd$State;->Destroyed:Lio/bidmachine/BidMachineAd$State;

    new-instance v6, Lio/bidmachine/BidMachineAd$State;

    const-string v7, "Expired"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lio/bidmachine/BidMachineAd$State;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/bidmachine/BidMachineAd$State;->Expired:Lio/bidmachine/BidMachineAd$State;

    .line 529
    filled-new-array/range {v0 .. v6}, [Lio/bidmachine/BidMachineAd$State;

    move-result-object v0

    sput-object v0, Lio/bidmachine/BidMachineAd$State;->$VALUES:[Lio/bidmachine/BidMachineAd$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 529
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/BidMachineAd$State;
    .locals 1

    .line 529
    const-class v0, Lio/bidmachine/BidMachineAd$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/BidMachineAd$State;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/BidMachineAd$State;
    .locals 1

    .line 529
    sget-object v0, Lio/bidmachine/BidMachineAd$State;->$VALUES:[Lio/bidmachine/BidMachineAd$State;

    invoke-virtual {v0}, [Lio/bidmachine/BidMachineAd$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/BidMachineAd$State;

    return-object v0
.end method
