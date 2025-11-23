import { common } from '@kit.AbilityKit';

export default class GlobalContext {
  private static instance: GlobalContext;
  private uiContext?: common.UIAbilityContext;

  private constructor() {}

  static getInstance(): GlobalContext {
    if (!GlobalContext.instance) {
      GlobalContext.instance = new GlobalContext();
    }
    return GlobalContext.instance;
  }

  public saveContext(context: common.UIAbilityContext) {
    this.uiContext = context;
  }

  public getServiceContext(): common.UIAbilityContext {
    if (!this.uiContext) {
      throw new Error('UI context henüz hazır değil.');
    }
    return this.uiContext;
  }

  public getSafeContext(): common.UIAbilityContext | undefined {
    return this.uiContext;
  }
}
