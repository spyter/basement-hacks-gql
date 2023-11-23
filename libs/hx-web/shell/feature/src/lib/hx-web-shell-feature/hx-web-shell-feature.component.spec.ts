import { ComponentFixture, TestBed } from '@angular/core/testing';
import { HxWebShellFeatureComponent } from './hx-web-shell-feature.component';

describe('HxWebShellFeatureComponent', () => {
  let component: HxWebShellFeatureComponent;
  let fixture: ComponentFixture<HxWebShellFeatureComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [HxWebShellFeatureComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(HxWebShellFeatureComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
