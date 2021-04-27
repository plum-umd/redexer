.class final Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;
.super Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/DeferredLifecycleHelper<",
        "Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final fragment:Landroidx/fragment/app/Fragment;

.field private zzbd:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener<",
            "Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzbe:Landroid/app/Activity;

.field private final zzbw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbw:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->fragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private final setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbe:Landroid/app/Activity;

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzd()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;Landroid/app/Activity;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private final zzd()V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbe:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbd:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbe:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbe:Landroid/app/Activity;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zzbz;->zza(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbe:Landroid/app/Activity;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/zze;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbd:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    new-instance v2, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;

    iget-object v3, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;-><init>(Landroidx/fragment/app/Fragment;Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;->onDelegateCreated(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    :cond_1
    return-void
.end method


# virtual methods
.method protected final createDelegate(Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/OnDelegateCreatedListener<",
            "Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbd:Lcom/google/android/gms/dynamic/OnDelegateCreatedListener;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzd()V

    return-void
.end method

.method public final getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->getDelegate()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zzb;->zzbw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
