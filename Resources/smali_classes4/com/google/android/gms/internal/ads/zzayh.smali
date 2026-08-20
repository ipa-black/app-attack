.class public final Lcom/google/android/gms/internal/ads/zzayh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzayl;
.implements Lcom/google/android/gms/internal/ads/zzayk;


# instance fields
.field private final zza:Landroid/net/Uri;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzazs;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzavi;

.field private final zzd:I

.field private final zze:Landroid/os/Handler;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzayg;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzatm;

.field private final zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzayk;

.field private zzj:Lcom/google/android/gms/internal/ads/zzato;

.field private zzk:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzazs;Lcom/google/android/gms/internal/ads/zzavi;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzayg;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zza:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzb:Lcom/google/android/gms/internal/ads/zzazs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzc:Lcom/google/android/gms/internal/ads/zzavi;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzayh;->zze:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzf:Lcom/google/android/gms/internal/ads/zzayg;

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzh:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzatm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzg:Lcom/google/android/gms/internal/ads/zzatm;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzast;ZLcom/google/android/gms/internal/ads/zzayk;)V
    .locals 2

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzi:Lcom/google/android/gms/internal/ads/zzayk;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzayy;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzayy;-><init>(JZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzj:Lcom/google/android/gms/internal/ads/zzato;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzayk;->zzg(Lcom/google/android/gms/internal/ads/zzato;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzayj;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzayf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayf;->zzx()V

    return-void
.end method

.method public final zzd()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzi:Lcom/google/android/gms/internal/ads/zzayk;

    return-void
.end method

.method public final zze(ILcom/google/android/gms/internal/ads/zzazw;)Lcom/google/android/gms/internal/ads/zzayj;
    .locals 12

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbaj;->zzc(Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzayf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zza:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzb:Lcom/google/android/gms/internal/ads/zzazs;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzazs;->zza()Lcom/google/android/gms/internal/ads/zzazt;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzc:Lcom/google/android/gms/internal/ads/zzavi;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzavi;->zza()[Lcom/google/android/gms/internal/ads/zzavg;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzd:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzayh;->zze:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzf:Lcom/google/android/gms/internal/ads/zzayg;

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzh:I

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzayf;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzazt;[Lcom/google/android/gms/internal/ads/zzavg;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzayg;Lcom/google/android/gms/internal/ads/zzayk;Lcom/google/android/gms/internal/ads/zzazw;Ljava/lang/String;I[B)V

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzato;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzg:Lcom/google/android/gms/internal/ads/zzatm;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/zzato;->zzd(ILcom/google/android/gms/internal/ads/zzatm;Z)Lcom/google/android/gms/internal/ads/zzatm;

    iget-wide v1, p2, Lcom/google/android/gms/internal/ads/zzatm;->zzc:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzk:Z

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzj:Lcom/google/android/gms/internal/ads/zzato;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzk:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzayh;->zzi:Lcom/google/android/gms/internal/ads/zzayk;

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzayk;->zzg(Lcom/google/android/gms/internal/ads/zzato;Ljava/lang/Object;)V

    return-void
.end method
